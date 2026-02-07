"""
From dump.sql:
1. Tables that HAVE ref_id column and ARE referenced by FK (ref_id is FK target)
2. Tables that HAVE ref_id but are NOT referenced by any FK
"""
import re
from pathlib import Path

DUMP = Path(__file__).resolve().parent / "dump.sql"


def main():
    content = DUMP.read_text(encoding="utf-8", errors="replace")

    # 1. Tables that have column "ref_id" (exact column name "ref_id", not fk_xxx_ref_id)
    tables_with_ref_id = set()
    current_table = None
    for line in content.split("\n"):
        create_m = re.match(r"CREATE\s+TABLE\s+(\w+)\.(\w+)\s*\(", line, re.IGNORECASE)
        if create_m:
            current_table = (create_m.group(1), create_m.group(2))
        # Column line exactly "ref_id integer" or "ref_id integer," (standalone column name)
        if current_table and re.match(r"^\s+ref_id\s+integer\s*,?\s*$", line, re.IGNORECASE):
            tables_with_ref_id.add(current_table)
        if current_table and line.strip() == ");":
            current_table = None

    # 2. Tables referenced by FK (REFERENCES schema.tablename(..., ref_id))
    ref_re = re.compile(r"REFERENCES\s+(\w+)\.(\w+)\s*\([^)]*ref_id[^)]*\)", re.IGNORECASE)
    referenced_by_fk = set()
    for m in ref_re.finditer(content):
        referenced_by_fk.add((m.group(1), m.group(2)))

    # (A) Have ref_id AND referenced by FK
    have_ref_id_and_referenced = sorted(tables_with_ref_id & referenced_by_fk)
    # (B) Have ref_id but NOT referenced by FK
    have_ref_id_not_referenced = sorted(tables_with_ref_id - referenced_by_fk)

    print("=" * 70)
    print("Tables that HAVE ref_id and ARE referenced by FK (ref_id is FK target)")
    print("=" * 70)
    for schema, table in have_ref_id_and_referenced:
        print(f"  {schema}.{table}")
    print(f"\nTotal: {len(have_ref_id_and_referenced)}")

    print("\n" + "=" * 70)
    print("Tables that HAVE ref_id but are NOT referenced by any FK")
    print("=" * 70)
    for schema, table in have_ref_id_not_referenced:
        print(f"  {schema}.{table}")
    print(f"\nTotal: {len(have_ref_id_not_referenced)}")


if __name__ == "__main__":
    main()
