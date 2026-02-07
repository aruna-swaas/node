-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'hrcs'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_hr_induction_training_topic_supporting_file FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA organization FROM magic_read_app_user;