DO $$
DECLARE
VAR_TENANT_KEY INT := ${TENANTKEY};
VAR_ORG_ID INT := ${ORGID};
 
BEGIN
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (40, VAR_TENANT_KEY, VAR_ORG_ID, 'sub_category', NULL , 1, NULL, NULL, NULL, NULL, 'sub_category');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (41, VAR_TENANT_KEY, VAR_ORG_ID, 'risk_team', NULL , 1, NULL, NULL, NULL, NULL, 'risk_team');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (42, VAR_TENANT_KEY, VAR_ORG_ID, 'committee', NULL , 1, NULL, NULL, NULL, NULL, 'committee');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (43, VAR_TENANT_KEY, VAR_ORG_ID, 'probability_template', NULL , 1, NULL, NULL, NULL, NULL, 'probability_template');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (44, VAR_TENANT_KEY, VAR_ORG_ID, 'severity_template', NULL , 1, NULL, NULL, NULL, NULL, 'severity_template');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (45, VAR_TENANT_KEY, VAR_ORG_ID, 'category_applicability', NULL , 1, NULL, NULL, NULL, NULL, 'category_applicability');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (46, VAR_TENANT_KEY, VAR_ORG_ID, 'hazard', NULL , 1, NULL, NULL, NULL, NULL, 'hazard');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (47, VAR_TENANT_KEY, VAR_ORG_ID, 'risk_hazard', NULL , 1, NULL, NULL, NULL, NULL, 'risk_hazard');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (48, VAR_TENANT_KEY, VAR_ORG_ID, 'sub_category_applicability', NULL , 1, NULL, NULL, NULL, NULL, 'sub_category_applicability');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (49, VAR_TENANT_KEY, VAR_ORG_ID, 'risk', NULL , 1, NULL, NULL, NULL, NULL, 'risk');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (50, VAR_TENANT_KEY, VAR_ORG_ID, 'rcm_risk', NULL , 1, NULL, NULL, NULL, NULL, 'rcm_risk');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (51, VAR_TENANT_KEY, VAR_ORG_ID, 'rcm', NULL , 1, NULL, NULL, NULL, NULL, 'rorganization');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (96, VAR_TENANT_KEY, VAR_ORG_ID, 'hazard_identification_tool', NULL , 1, NULL, NULL, NULL, NULL, 'hazard_identification_tool');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (97, VAR_TENANT_KEY, VAR_ORG_ID, 'individual_risk_analysis', NULL , 1, NULL, NULL, NULL, NULL, 'individual_risk_analysis');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (98, VAR_TENANT_KEY, VAR_ORG_ID, 'hazard_identification_used', NULL, 1, NULL, NULL, NULL, NULL, 'hazard_identification_used');

INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (99, VAR_TENANT_KEY, VAR_ORG_ID, 'risk_review_report_summary', NULL, 1, NULL, NULL, NULL, NULL, 'risk_review_report_summary');


INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (100, VAR_TENANT_KEY, VAR_ORG_ID, 'review_requirement_id', NULL, 1, NULL, NULL, NULL, NULL, 'review_requirement_id');


END $$;
 
 
 