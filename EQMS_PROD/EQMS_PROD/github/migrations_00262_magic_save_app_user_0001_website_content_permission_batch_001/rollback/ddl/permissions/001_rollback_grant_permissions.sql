-- Rollback: Revoke permissions from magic_save_app_user
-- on tables created by module 'marketing'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE marketing.eqms_website_content_sales_details_history FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE marketing.eqms_website_content_sales_details FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE marketing.eqms_website_content_regulatory_details_history FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE marketing.eqms_website_content_regulatory_details FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE marketing.eqms_website_content_product_details_history FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE marketing.eqms_website_content_product_details FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE marketing.eqms_website_content_marketing_details_history FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE marketing.eqms_website_content_marketing_details FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE marketing.eqms_website_content_legal_details_history FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE marketing.eqms_website_content_legal_details FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE marketing.eqms_product_website_content FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA marketing FROM magic_save_app_user;