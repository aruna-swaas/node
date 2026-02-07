DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN
--TEST LICENSE
INSERT INTO organization.eqms_module (eqms_tenant_key, fk_eqms_organization_id, ref_id, module_name, module_type, module_slug, status, created_date, created_by)
VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 4,'Regulation', 1, 'regulation', 1, NOW(), 1); 

-- eqms_form 
-- Regulation Forms Insert Statements based on regulation-form.csv
INSERT INTO abac.eqms_form (eqms_tenant_key, fk_eqms_organization_id, form_name, status, created_date, created_by, modified_date, modified_by, fk_eqms_form_type_lk_id, is_parallel_allowed, completion_tracking, fk_eqms_entity_subscription_id, ref_id, slug)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Executive Summary', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 51, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Test License', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 52, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Manufacture License', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 53, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Plant Master', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 54, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Device Master', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 55, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Description & Specs', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 57, 'description_&_specs'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Labelling', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 58, 'labelling'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Design & Mfg Info', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 59, 'design_&_mfg_info'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Essential Principles CheckList', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 60, 'essential_principles_checklist'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Risk & Control Summary', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 61, 'risk_&_control_summary'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'V&V Medical Device', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 62, 'v&v_medical_device'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'General Information', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 63, 'general_information'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Personnel', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 64, 'personnel'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Premises and Facilities', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 65, 'premises_and_facilities'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Equipment', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 66, 'equipment'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Sanitation', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 67, 'sanitation'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Production', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 68, 'production'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Quality Assuranece', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 69, 'quality_assuranece'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Storage', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 70, 'storage'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Documentation', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 71, 'documentation'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Device Complaints & FSCA', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 72, 'device_complaints_&_fsca'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Internal Audit/ Self Inspection', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 73, 'internal_audit/_self_inspection'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Contract Activities', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 74, 'contract_activities'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Declaration of Conformity', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 76, 'declaration_of_conformity');

-- eqms_form_controls
-- Regulation Form Controls Insert Statements based on regulation-form-controld.csv
INSERT INTO abac.eqms_form_controls (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, action_name, status, created_date, created_by, modified_date, modified_by, action_type, ref_id)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 52, 'Submit For Approval', 1, NOW(), 1, NULL, NULL, NULL, 255),
(VAR_TENANT_KEY, VAR_ORG_ID, 52, 'Submit For Review', 1, NOW(), 1, NULL, NULL, NULL, 256),
(VAR_TENANT_KEY, VAR_ORG_ID, 52, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 257),
(VAR_TENANT_KEY, VAR_ORG_ID, 52, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 258),
(VAR_TENANT_KEY, VAR_ORG_ID, 52, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 259),
(VAR_TENANT_KEY, VAR_ORG_ID, 52, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 260),
(VAR_TENANT_KEY, VAR_ORG_ID, 53, 'Submit For Approval', 1, NOW(), 1, NULL, NULL, NULL, 261),
(VAR_TENANT_KEY, VAR_ORG_ID, 53, 'Submit For Review', 1, NOW(), 1, NULL, NULL, NULL, 262),
(VAR_TENANT_KEY, VAR_ORG_ID, 53, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 263),
(VAR_TENANT_KEY, VAR_ORG_ID, 53, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 264),
(VAR_TENANT_KEY, VAR_ORG_ID, 53, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 265),
(VAR_TENANT_KEY, VAR_ORG_ID, 53, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 266),
(VAR_TENANT_KEY, VAR_ORG_ID, 55, 'Submit For Approval', 1, NOW(), 1, NULL, NULL, NULL, 267),
(VAR_TENANT_KEY, VAR_ORG_ID, 55, 'Submit For Review', 1, NOW(), 1, NULL, NULL, NULL, 268),
(VAR_TENANT_KEY, VAR_ORG_ID, 55, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 269),
(VAR_TENANT_KEY, VAR_ORG_ID, 55, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 270),
(VAR_TENANT_KEY, VAR_ORG_ID, 55, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 271),
(VAR_TENANT_KEY, VAR_ORG_ID, 55, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 272),
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 'Submit For Approval', 1, NOW(), 1, NULL, NULL, NULL, 273),
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 'Submit For Review', 1, NOW(), 1, NULL, NULL, NULL, 274),
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 275),
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 276),
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 277),
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 278);


-- eqms_form_control_actions

-- Regulation Form Control Actions Insert Statements based on regulation-form-control-action.csv
INSERT INTO abac.eqms_form_control_actions (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_controls_id, requires_role_validation, is_transition_action, status, created_date, created_by, modified_date, modified_by)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 278, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 277, false, false, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 276, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 275, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 274, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 273, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 272, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 271, false, false, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 270, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 269, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 268, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 267, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 266, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 265, false, false, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 264, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 263, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 262, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 261, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 260, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 259, false, false, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 258, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 257, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 256, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 255, false, true, 1, NOW(), 1, NULL, NULL);

--Regulation Form Menu Mapping Insert Statements based on regulation-form-menu-mapping.csv
INSERT INTO abac.eqms_form_menu_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_menu_lk_id, status, created_date, created_by, modified_date, modified_by)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 52, 39, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 51, 124, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 53, 40, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 55, 43, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 57, 125, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 58, 126, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 59, 127, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 60, 128, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 61, 129, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 62, 130, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 63, 112, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 42, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 64, 113, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 65, 114, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 66, 115, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 67, 116, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 68, 117, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 69, 118, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 70, 119, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 71, 120, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 72, 121, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 73, 122, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 74, 123, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 76, 41, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 55, 247, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 252, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 76, 251, 1, NOW(), 1, NULL, NULL);

END $$;