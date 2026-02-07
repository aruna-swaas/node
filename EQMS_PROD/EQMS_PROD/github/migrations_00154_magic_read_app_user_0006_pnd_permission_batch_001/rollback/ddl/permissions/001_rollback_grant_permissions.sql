-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_product_variants FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_product_need_document FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pnd_text_requirements FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pnd_specification FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pnd_items FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pnd_end_user_chosen_requirements FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pnd_buyer_chosen_requirements FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA dnd FROM magic_read_app_user;