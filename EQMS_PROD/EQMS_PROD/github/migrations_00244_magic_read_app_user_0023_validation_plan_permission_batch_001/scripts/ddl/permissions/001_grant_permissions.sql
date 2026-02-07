-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'dnd'

GRANT USAGE ON SCHEMA dnd TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_place TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_plan TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_plan_document TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_plan_supporting_documents TO magic_read_app_user;