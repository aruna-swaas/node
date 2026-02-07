-- ============================================================================
-- Rollback: Batch-wise Permissions for RISK_MANAGEMENT Module
-- ============================================================================
-- This file revokes permissions granted to: risk_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from risk_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_rmp_patient_population_history FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_rmp_patient_population FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_rmp_patient_anatomical_scope_history FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_rmp_patient_anatomical_scope FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_rmp_intended_device_user_profile_history FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_rmp_intended_device_user_profile FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_rmp_applicable_stage_history FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_rmp_applicable_stage FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_risk_menu_stage_review_history FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_risk_menu_stage_review FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_risk_management_plan_history FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_risk_management_plan FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_risk FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_rmp_user_type_lk FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_rmp_applicable_stage_lk FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_risk_identification_method_lk FROM risk_app_user;

-- Revoke schema usage from risk_app_user
REVOKE USAGE ON SCHEMA risk_management FROM risk_app_user;
REVOKE USAGE ON SCHEMA organization FROM risk_app_user;
