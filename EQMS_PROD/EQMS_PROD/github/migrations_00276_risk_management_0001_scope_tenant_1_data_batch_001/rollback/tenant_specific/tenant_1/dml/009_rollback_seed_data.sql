-- Rollback: Delete seed data from file F-07 Risk Management Plan Ver 3.sql
-- Original file: F-07 Risk Management Plan Ver 3.sql
-- Seed data file: 009_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$
DECLARE
    VAR_TENANT_KEY           INT     := ${TENANTKEY};
    VAR_ORG_ID               INT     := ${ORGID};
    VAR_BUCKET_NAME          TEXT    := '${BUCKETNAME}';
    VAR_API_ENDPOINT         TEXT    := '${APIENDPOINT}';
BEGIN

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 930 AND variable_key = 'description' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{description}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 929 AND variable_key = 'hazard_identification_tools_used' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{hazard_identification_tools_used}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 734 AND variable_key = 's5' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{s5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 733 AND variable_key = 's4' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{s4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 732 AND variable_key = 's3' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{s3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 731 AND variable_key = 's2' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{s2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 730 AND variable_key = 's1' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{s1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 729 AND variable_key = 'p5' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 728 AND variable_key = 'p4' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 727 AND variable_key = 'p3' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 726 AND variable_key = 'p2' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 725 AND variable_key = 'p1' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 724 AND variable_key = 'p5s5' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p5s5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 723 AND variable_key = 'p5s4' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p5s4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 722 AND variable_key = 'p5s3' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p5s3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 721 AND variable_key = 'p5s2' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p5s2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 720 AND variable_key = 'p5s1' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p5s1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 719 AND variable_key = 'p4s5' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p4s5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 718 AND variable_key = 'p4s4' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p4s4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 717 AND variable_key = 'p4s3' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p4s3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 716 AND variable_key = 'p4s2' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p4s2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 715 AND variable_key = 'p4s1' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p4s1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 714 AND variable_key = 'p3s5' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p3s5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 713 AND variable_key = 'p3s4' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p3s4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 712 AND variable_key = 'p3s3' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p3s3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 711 AND variable_key = 'p3s2' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p3s2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 710 AND variable_key = 'p3s1' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p3s1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 709 AND variable_key = 'p2s5' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p2s5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 708 AND variable_key = 'p2s4' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p2s4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 707 AND variable_key = 'p2s3' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p2s3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 706 AND variable_key = 'p2s2' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p2s2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 705 AND variable_key = 'p2s1' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p2s1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 704 AND variable_key = 'p1s5' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p1s5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 703 AND variable_key = 'p1s4' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p1s4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 702 AND variable_key = 'p1s3' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p1s3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 701 AND variable_key = 'p1s2' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p1s2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 700 AND variable_key = 'p1s1' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{p1s1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = Probability-Severity combinations;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 699 AND variable_key = 'model' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{model}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 698 AND variable_key = 'design' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{design}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 697 AND variable_key = 'post_market_clinical_followup_actions' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{post_market_clinical_followup_actions}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 696 AND variable_key = 'post_market_surveillance_actions' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{post_market_surveillance_actions}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 695 AND variable_key = 'adverse_events_safety_incidents_actions' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{adverse_events_safety_incidents_actions}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 694 AND variable_key = 'formal_complaints_actions' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{formal_complaints_actions}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 693 AND variable_key = 'customer_end_user_feedback_actions' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{customer_end_user_feedback_actions}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 692 AND variable_key = 'outgoing_quality_control_actions' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{outgoing_quality_control_actions}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 691 AND variable_key = 'feedback_production_manufacturing_actions' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{feedback_production_manufacturing_actions}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 690 AND variable_key = 'residual_risk_criteria' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{residual_risk_criteria}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 689 AND variable_key = 'severity_levels' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{severity_levels}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 688 AND variable_key = 'probability_levels' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{probability_levels}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 687 AND variable_key = 'risk_review_requirements' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{risk_review_requirements}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 686 AND variable_key = 'risk_team' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{risk_team}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 685 AND variable_key = 'use_environment' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{use_environment}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 684 AND variable_key = 'user_profile' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{user_profile}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 683 AND variable_key = 'anatomical_scope' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{anatomical_scope}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 682 AND variable_key = 'patient_population' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{patient_population}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 681 AND variable_key = 'device_intended_use' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{device_intended_use}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 680 AND variable_key = 'device_description' AND status = 1 AND fk_eqms_document_template_id = 38 AND variable_identifier = '{device_description}';

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 38 AND fk_eqms_form_id = 133 AND status = 1;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 38 AND fk_eqms_form_id = 88 AND status = 1;

-- Delete from dms.eqms_document_template_history
DELETE FROM dms.eqms_document_template_history WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 38 AND fk_eqms_document_template_type_lk_id = 39 AND document_template_name = 'F-07 Risk Management Plan Ver 3' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Risk Management/F-07 Risk Management Plan Ver 3.docx') AND template_version = 1.0 AND status = 1;

-- Delete from dms.eqms_document_template_api_details
DELETE FROM dms.eqms_document_template_api_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 38 AND endpoint = CONCAT(VAR_API_ENDPOINT, '/api/v1/risk/record-generation/risk-management-plan') AND status = 1;

-- Delete from dms.eqms_document_template
DELETE FROM dms.eqms_document_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND fk_eqms_document_template_type_lk_id = 39 AND document_template_name = 'F-07 Risk Management Plan Ver 3' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Risk Management/F-07 Risk Management Plan Ver 3.docx') AND template_version = 1.0 AND status = 1 AND fk_eqms_record_generation_mode_lk_id = 1;

-- Delete from dms.eqms_document_template_type_lk
DELETE FROM dms.eqms_document_template_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 39 AND document_template_type = 'risk_management_plan' AND status = 1;

END $$;
