-- External permissions: Grant access to dnd_app_user (from module 'dnd')
-- on tables created by module 'vendor'

GRANT USAGE ON SCHEMA dnd TO dnd_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_part_lk_history TO dnd_app_user;