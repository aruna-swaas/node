DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN

INSERT INTO organization.eqms_module (eqms_tenant_key, fk_eqms_organization_id, ref_id, module_name, module_type, module_slug, status, created_date, created_by)
VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 3,'Organization', 1, 'organization', 1, NOW(), 1);

--eqms_form 
INSERT INTO abac.eqms_form (ref_id, eqms_tenant_key, fk_eqms_organization_id, form_name, status, created_date, created_by, modified_date, modified_by, fk_eqms_form_type_lk_id, is_parallel_allowed, completion_tracking, fk_eqms_entity_subscription_id)
VALUES
(48,VAR_TENANT_KEY,VAR_ORG_ID,'User onboarding',1,NOW(),1,NULL,NULL,1,true,false,NULL);

-- eqms_form_controls
INSERT INTO abac.eqms_form_controls(ref_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, action_name, status, created_date, created_by, modified_date, modified_by, action_type)
VALUES
(249,VAR_TENANT_KEY,VAR_ORG_ID,48,'Submit For Approval',1,NOW(),1,NULL,NULL,NULL),
(250,VAR_TENANT_KEY,VAR_ORG_ID,48,'Submit For Review',1,NOW(),1,NULL,NULL,NULL),
(251,VAR_TENANT_KEY,VAR_ORG_ID,48,'Approve',1,NOW(),1,NULL,NULL,NULL),
(252,VAR_TENANT_KEY,VAR_ORG_ID,48,'Reject',1,NOW(),1,NULL,NULL,NULL),
(253,VAR_TENANT_KEY,VAR_ORG_ID,48,'Cancel',1,NOW(),1,NULL,NULL,NULL),
(254,VAR_TENANT_KEY,VAR_ORG_ID,48,'Save',1,NOW(),1,NULL,NULL,NULL);

-- eqms_form_control_actions

INSERT INTO abac.eqms_form_control_actions (eqms_tenant_key,fk_eqms_organization_id,fk_eqms_form_controls_id,requires_role_validation,is_transition_action,status,created_date,created_by,modified_date,modified_by)
VALUES
  (VAR_TENANT_KEY,VAR_ORG_ID,249,false,true,1,NOW(),NULL,NULL,NULL),
  (VAR_TENANT_KEY,VAR_ORG_ID,250,false,true,1,NOW(),NULL,NULL,NULL),
  (VAR_TENANT_KEY,VAR_ORG_ID,251,false,true,1,NOW(),NULL,NULL,NULL),
  (VAR_TENANT_KEY,VAR_ORG_ID,252,false,true,1,NOW(),NULL,NULL,NULL),
  (VAR_TENANT_KEY,VAR_ORG_ID,253,false,false,1,NOW(),NULL,NULL,NULL),
  (VAR_TENANT_KEY,VAR_ORG_ID,254,false,true,1,NOW(),NULL,NULL,NULL);

-- eqms_form_menu_mapping
INSERT INTO abac.eqms_form_menu_mapping(
  eqms_tenant_key,
  fk_eqms_organization_id,
  fk_eqms_form_id,
  fk_eqms_menu_lk_id,
  status,
  created_date,
  created_by,
  modified_date,
  modified_by
)
VALUES
  (VAR_TENANT_KEY,VAR_ORG_ID,48,6,1,NOW(),1,NULL,NULL),
  (VAR_TENANT_KEY,VAR_ORG_ID,48,46,1,NOW(),1,NULL,NULL);

END $$;