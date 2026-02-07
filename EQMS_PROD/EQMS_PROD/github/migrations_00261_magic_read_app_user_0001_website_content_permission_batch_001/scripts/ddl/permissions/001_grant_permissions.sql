-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'marketing'

GRANT USAGE ON SCHEMA marketing TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE marketing.eqms_product_website_content TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE marketing.eqms_website_content_legal_details TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE marketing.eqms_website_content_marketing_details TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE marketing.eqms_website_content_product_details TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE marketing.eqms_website_content_regulatory_details TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE marketing.eqms_website_content_sales_details TO magic_read_app_user;