-- ============================================================================
-- Rollback: Batch-wise Permissions for NOTIFICATION_CENTER Module
-- ============================================================================
-- This file revokes permissions granted to: notification_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from notification_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_template_variables_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_template_variables FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_template_identifiers_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_template_identifiers FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_template_header_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_template_header FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_system_settings_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_system_settings FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_sqs_message_log_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_sqs_message_log FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_sqs_message_api_key_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_sqs_message_api_key FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_schedule_variable_config_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_schedule_variable_config FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_schedule_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_schedule_email_recipient_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_schedule_email_recipient FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_schedule FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_retry_log_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_retry_log FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_retry_config_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_retry_config FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_provider_type_master_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_provider_type_master FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_provider_header_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_provider_header FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_provider_channel_master_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_provider_channel_master FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_notifications_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_notifications FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_notification_transactions_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_notification_transactions FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_notification_header_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_notification_header FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_email_provider_master_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_email_provider_master FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_email_notification_log_history FROM notification_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_email_notification_log FROM notification_app_user;

-- Revoke schema usage from notification_app_user
REVOKE USAGE ON SCHEMA notification_center FROM notification_app_user;
