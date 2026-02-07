-- Global user permissions: Grant access to magic_save_app_user
-- on tables created by module 'dnd'

GRANT USAGE ON SCHEMA dnd TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pnd_review_report_breakdown TO magic_save_app_user;