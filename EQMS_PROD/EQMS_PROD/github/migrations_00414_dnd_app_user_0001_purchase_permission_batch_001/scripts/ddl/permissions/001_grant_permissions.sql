-- External permissions: Grant access to dnd_app_user (from module 'dnd')
-- on tables created by module 'purchase'

GRANT USAGE ON SCHEMA organization TO dnd_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_purchase_type_lk TO dnd_app_user;