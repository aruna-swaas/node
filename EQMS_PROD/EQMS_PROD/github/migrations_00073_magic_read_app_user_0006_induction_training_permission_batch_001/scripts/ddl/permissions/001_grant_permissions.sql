-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'hrcs'

GRANT USAGE ON SCHEMA organization TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_hr_induction_training_topic_supporting_file TO magic_read_app_user;