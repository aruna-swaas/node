-- External permissions: Grant access to organization_app_user (from module 'organization')
-- on tables created by module 'purchase'

GRANT USAGE ON SCHEMA purchase TO organization_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_part_detail TO organization_app_user;