-- ============================================================================
-- Batch-wise Permissions for NOTIFICATION_CENTER Module
-- ============================================================================
-- This file grants schema and table access permissions to: notification_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA notification_center TO notification_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_email_notification_log TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_email_notification_log_history TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_email_provider_master TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_email_provider_master_history TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_notification_header TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_notification_header_history TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_notification_transactions TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_notification_transactions_history TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_notifications TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_notifications_history TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_provider_channel_master TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_provider_channel_master_history TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_provider_header TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_provider_header_history TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_provider_type_master TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_provider_type_master_history TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_retry_config TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_retry_config_history TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_retry_log TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_retry_log_history TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_schedule TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_schedule_email_recipient TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_schedule_email_recipient_history TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_schedule_history TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_schedule_variable_config TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_schedule_variable_config_history TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_sqs_message_api_key TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_sqs_message_api_key_history TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_sqs_message_log TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_sqs_message_log_history TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_system_settings TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_system_settings_history TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_template_header TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_template_header_history TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_template_identifiers TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_template_identifiers_history TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_template_variables TO notification_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE notification_center.eqms_nc_template_variables_history TO notification_app_user;
