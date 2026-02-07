-- Rollback: Revoke permissions from organization_app_user
-- on tables created by module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_product_need_document_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_product_need_document FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pnd_supporting_documents_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pnd_supporting_documents FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pnd_requirement_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pnd_requirement FROM organization_app_user;

REVOKE USAGE ON SCHEMA dnd FROM organization_app_user;