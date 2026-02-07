-- External permissions: Grant access to dnd_app_user (from module 'dnd')
-- on tables created by module 'vendor'

GRANT USAGE ON SCHEMA vendor TO dnd_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_part_category TO dnd_app_user;