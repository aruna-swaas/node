-- ============================================================================
-- Batch-wise Permissions for QC Module
-- ============================================================================
-- This file grants schema and table access permissions to: quality_control_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA organization TO quality_control_app_user;
GRANT USAGE ON SCHEMA qc TO quality_control_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_sanity_spec_checklist_group_lk TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_sanity_spec_checklist TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_sanity_spec_checklist_applicable_group TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_sanity_spec_checklist_applicable_group_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_sanity_spec_checklist_detail TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_sanity_spec_checklist_detail_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_sanity_spec_checklist_group_lk_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_sanity_spec_checklist_history TO quality_control_app_user;
