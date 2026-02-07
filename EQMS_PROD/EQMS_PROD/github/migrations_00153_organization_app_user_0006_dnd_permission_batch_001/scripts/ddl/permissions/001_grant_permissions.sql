-- External permissions: Grant access to organization_app_user (from module 'organization')
-- on tables created by module 'dnd'

GRANT USAGE ON SCHEMA dnd TO organization_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pnd_requirement TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pnd_requirement_history TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pnd_supporting_documents TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pnd_supporting_documents_history TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_product_need_document TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_product_need_document_history TO organization_app_user;