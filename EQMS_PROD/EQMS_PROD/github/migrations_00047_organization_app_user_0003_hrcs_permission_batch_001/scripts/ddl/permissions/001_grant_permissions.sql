-- External permissions: Grant access to organization_app_user (from module 'organization')
-- on tables created by module 'hrcs'

GRANT USAGE ON SCHEMA hrcs TO organization_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_resource_requisition TO organization_app_user;