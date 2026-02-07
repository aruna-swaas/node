-- Rollback: Revoke permissions from magic_save_app_user
-- on tables created by module 'hrcs'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_resource_requisition_history FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_resource_requisition FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA hrcs FROM magic_save_app_user;