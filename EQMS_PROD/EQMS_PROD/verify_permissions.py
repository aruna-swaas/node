"""
Verify that all app_user table permissions from permissions.csv
are granted in the migration scripts under github/**/permissions/001_grant_permissions.sql
"""
import csv
import re
from pathlib import Path
from collections import defaultdict

GITHUB_DIR = Path(__file__).resolve().parent / "github"
PERMISSIONS_CSV = Path(__file__).resolve().parent / "permissions.csv"


def load_expected_permissions():
    """Load app_user -> set(tablename) from permissions.csv (tab-delimited, quoted)."""
    expected = defaultdict(set)
    with open(PERMISSIONS_CSV, "r", encoding="utf-8") as f:
        reader = csv.DictReader(f, delimiter="\t", quotechar='"')
        for row in reader:
            app_user = (row.get("app_user") or "").strip()
            tablename = (row.get("tablename") or "").strip()
            if app_user and tablename:
                expected[app_user].add(tablename)
    return dict(expected)


def extract_grants_from_sql(content):
    """Extract (schema.tablename, app_user) from GRANT ... ON TABLE schema.tablename TO app_user;"""
    # Match: ON TABLE schema.tablename TO app_user;
    pattern = re.compile(
        r"GRANT\s+[\w\s,]+\s+ON\s+TABLE\s+(\w+)\.(\w+)\s+TO\s+(\w+)\s*;",
        re.IGNORECASE
    )
    for m in pattern.finditer(content):
        schema, table, app_user = m.group(1), m.group(2), m.group(3)
        yield (app_user, table)  # we compare by table name only (CSV has no schema)


def load_granted_permissions():
    """Scan all 001_grant_permissions.sql and build app_user -> set(tablename)."""
    granted = defaultdict(set)
    for sql_file in GITHUB_DIR.rglob("permissions/001_grant_permissions.sql"):
        try:
            content = sql_file.read_text(encoding="utf-8", errors="replace")
            for app_user, tablename in extract_grants_from_sql(content):
                granted[app_user].add(tablename)
        except Exception as e:
            print(f"Warning: could not read {sql_file}: {e}")
    return dict(granted)


def main():
    expected = load_expected_permissions()
    granted = load_granted_permissions()

    all_app_users = sorted(set(expected.keys()) | set(granted.keys()))
    missing_by_user = {}
    extra_by_user = {}
    ok_count = 0
    missing_total = 0

    for app_user in all_app_users:
        exp = expected.get(app_user, set())
        grt = granted.get(app_user, set())
        missing = exp - grt
        extra = grt - exp
        if missing:
            missing_by_user[app_user] = sorted(missing)
            missing_total += len(missing)
        if extra:
            extra_by_user[app_user] = sorted(extra)
        if not missing:
            ok_count += 1

    # Report
    print("=" * 60)
    print("PERMISSION VERIFICATION: permissions.csv vs github migrations")
    print("=" * 60)
    print(f"Expected app_users (from CSV): {list(expected.keys())}")
    print(f"Granted app_users (from SQL):  {list(granted.keys())}")
    print()

    if missing_total == 0:
        print("OK: All app_users have all their table permissions granted.")
    else:
        print("MISSING PERMISSIONS (in CSV but not granted in any migration):")
        print("-" * 60)
        for app_user in sorted(missing_by_user.keys()):
            missing = missing_by_user[app_user]
            print(f"\n{app_user} ({len(missing)} missing):")
            for t in missing:
                print(f"  - {t}")
        print()

    if extra_by_user:
        print("EXTRA PERMISSIONS (granted in migrations but not in CSV):")
        print("-" * 60)
        for app_user in sorted(extra_by_user.keys()):
            extra = extra_by_user[app_user]
            print(f"\n{app_user} ({len(extra)} extra):")
            for t in extra[:20]:
                print(f"  - {t}")
            if len(extra) > 20:
                print(f"  ... and {len(extra) - 20} more")
        print()

    print("Summary:")
    print(f"  App_users with all permissions: {ok_count}/{len(all_app_users)}")
    print(f"  Total missing (table, app_user) pairs: {missing_total}")
    if missing_total > 0:
        exit(1)


if __name__ == "__main__":
    main()
