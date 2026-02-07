"""
Find FK constraints where the REFERENCED table has a ref_id column
but the FK points to (id) [or other columns] instead of (..., ref_id).
Output: Child table, FK constraint name, Referenced table (wrongly by id).
"""
import re
from pathlib import Path

DUMP = Path(__file__).resolve().parent / "dump.sql"


def main():
    content = DUMP.read_text(encoding="utf-8", errors="replace")
    lines = content.split("\n")

    # 1. Tables that have column "ref_id"
    tables_with_ref_id = set()
    current_table = None
    for line in lines:
        create_m = re.match(r"CREATE\s+TABLE\s+(\w+)\.(\w+)\s*\(", line, re.IGNORECASE)
        if create_m:
            current_table = (create_m.group(1), create_m.group(2))
        if current_table and re.match(r"^\s+ref_id\s+integer\s*,?\s*$", line, re.IGNORECASE):
            tables_with_ref_id.add(current_table)
        if current_table and line.strip() == ");":
            current_table = None

    # 2. Parse ADD CONSTRAINT ... FOREIGN KEY ... REFERENCES schema.table(col1, col2, ...) [ON ...];
    #    Child table is on previous line: ALTER TABLE ONLY schema.table
    fk_re = re.compile(
        r"ADD\s+CONSTRAINT\s+(\w+)\s+FOREIGN\s+KEY\s+\([^)]+\)\s+"
        r"REFERENCES\s+(\w+)\.(\w+)\s*\(([^)]+)\)\s*(?:ON|;)",
        re.IGNORECASE
    )
    wrong_fks = []
    for i, line in enumerate(lines):
        m = fk_re.search(line)
        if not m:
            continue
        constraint_name = m.group(1)
        ref_schema = m.group(2)
        ref_table = m.group(3)
        ref_cols = m.group(4)
        if (ref_schema, ref_table) not in tables_with_ref_id:
            continue
        if "ref_id" in ref_cols:
            continue
        ref_cols_list = [c.strip() for c in ref_cols.split(",")]
        child_schema, child_table = None, None
        for j in range(i - 1, max(-1, i - 5), -1):
            alt = re.match(r"ALTER\s+TABLE\s+ONLY\s+(\w+)\.(\w+)\s*$", lines[j], re.IGNORECASE)
            if alt:
                child_schema, child_table = alt.group(1), alt.group(2)
                break
        if child_schema is None:
            continue
        wrong_fks.append({
            "child": f"{child_schema}.{child_table}",
            "constraint": constraint_name,
            "referenced": f"{ref_schema}.{ref_table}",
            "ref_cols": ref_cols_list,
        })

    # Output
    print("#\tChild table\tFK constraint name\tReferenced table (wrongly by id)")
    print("-" * 100)
    for idx, row in enumerate(wrong_fks, 1):
        print(f"{idx}\t{row['child']}\t{row['constraint']}\t{row['referenced']}  [refs: {', '.join(row['ref_cols'])}]")
    print(f"\nTotal: {len(wrong_fks)}")


if __name__ == "__main__":
    main()
