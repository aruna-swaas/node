-- Rollback: Delete seed data from file 004_ABAC_CONFIGURATION.sql
-- Original file: 004_ABAC_CONFIGURATION.sql
-- Seed data file: 004_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN

-- Delete from abac.eqms_object_policy_mapper
DELETE FROM abac.eqms_object_policy_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_object_id = 2 AND fk_eqms_policy_id = 2 AND priority = 0 AND status = 1;

-- Delete from abac.eqms_object_policy_mapper
DELETE FROM abac.eqms_object_policy_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_object_id = 1 AND fk_eqms_policy_id = 1 AND priority = 0 AND status = 1;

-- Delete from abac.eqms_policy_attributes
DELETE FROM abac.eqms_policy_attributes WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_policy_id = 1 AND subject_key = 'role_id' AND object_key = 'regulatory_head_role_id' AND operator = 'equals' AND status = 1;

-- Delete from abac.eqms_policy_attributes
DELETE FROM abac.eqms_policy_attributes WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_policy_id = 2 AND subject_key = 'user_id' AND object_key = 'owner_id' AND operator = 'not_equals' AND status = 1;

-- Delete from abac.eqms_object_attributes
DELETE FROM abac.eqms_object_attributes WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_object_id = 1 AND value = '17' AND status = 1;

-- Delete from abac.eqms_policy_actions
DELETE FROM abac.eqms_policy_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_policy_id = 2 AND fk_eqms_action_lk_id = 3 AND status = 1;

-- Delete from abac.eqms_policy_actions
DELETE FROM abac.eqms_policy_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_policy_id = 2 AND fk_eqms_action_lk_id = 2 AND status = 1;

-- Delete from abac.eqms_policy_actions
DELETE FROM abac.eqms_policy_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_policy_id = 1 AND fk_eqms_action_lk_id = 1 AND status = 1;

-- Delete from abac.eqms_policy
DELETE FROM abac.eqms_policy WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND name = 'DIR-OWNER' AND description = 'Allow only owner to edit DIR' AND access_type = 'Deny' AND logical_gate = 'AND' AND status = 1;

-- Delete from abac.eqms_policy
DELETE FROM abac.eqms_policy WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND name = 'regulatory Head Checkbox Policy' AND description = 'Allows regulatory  head to uncheck checkbox' AND access_type = 'Allow' AND logical_gate = 'AND' AND status = 1;

-- Delete from abac.eqms_object
DELETE FROM abac.eqms_object WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND object_type = 'form' AND object_name = 'DIR' AND status = 1 AND is_context_driven = 0 AND entity_id = 18;

-- Delete from abac.eqms_object
DELETE FROM abac.eqms_object WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND object_type = 'form' AND object_name = 'Applicable Specification' AND status = 1 AND is_context_driven = 0 AND entity_id = 11;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 115 AND fk_eqms_menu_lk_id = 151 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 114 AND fk_eqms_menu_lk_id = 157 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 113 AND fk_eqms_menu_lk_id = 146 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 112 AND fk_eqms_menu_lk_id = 153 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 111 AND fk_eqms_menu_lk_id = 150 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 110 AND fk_eqms_menu_lk_id = 149 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 109 AND fk_eqms_menu_lk_id = 147 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 108 AND fk_eqms_menu_lk_id = 144 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 106 AND fk_eqms_menu_lk_id = 161 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 105 AND fk_eqms_menu_lk_id = 143 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 104 AND fk_eqms_menu_lk_id = 184 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 103 AND fk_eqms_menu_lk_id = 183 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 102 AND fk_eqms_menu_lk_id = 182 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 75 AND fk_eqms_menu_lk_id = 140 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 50 AND fk_eqms_menu_lk_id = 175 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 49 AND fk_eqms_menu_lk_id = 185 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 47 AND fk_eqms_menu_lk_id = 176 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 47 AND fk_eqms_menu_lk_id = 145 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 47 AND fk_eqms_menu_lk_id = 176 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 46 AND fk_eqms_menu_lk_id = 148 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 46 AND fk_eqms_menu_lk_id = 171 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 46 AND fk_eqms_menu_lk_id = 171 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 45 AND fk_eqms_menu_lk_id = 170 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 45 AND fk_eqms_menu_lk_id = 170 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 44 AND fk_eqms_menu_lk_id = 169 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 35 AND fk_eqms_menu_lk_id = 173 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 34 AND fk_eqms_menu_lk_id = 74 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 33 AND fk_eqms_menu_lk_id = 73 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 32 AND fk_eqms_menu_lk_id = 72 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 31 AND fk_eqms_menu_lk_id = 71 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 30 AND fk_eqms_menu_lk_id = 70 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 29 AND fk_eqms_menu_lk_id = 69 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 28 AND fk_eqms_menu_lk_id = 68 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 27 AND fk_eqms_menu_lk_id = 67 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 26 AND fk_eqms_menu_lk_id = 66 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 25 AND fk_eqms_menu_lk_id = 65 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 24 AND fk_eqms_menu_lk_id = 168 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 23 AND fk_eqms_menu_lk_id = 167 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 22 AND fk_eqms_menu_lk_id = 166 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 21 AND fk_eqms_menu_lk_id = 302 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 20 AND fk_eqms_menu_lk_id = 64 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 20 AND fk_eqms_menu_lk_id = 64 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 19 AND fk_eqms_menu_lk_id = 63 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 18 AND fk_eqms_menu_lk_id = 141 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 17 AND fk_eqms_menu_lk_id = 61 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 17 AND fk_eqms_menu_lk_id = 61 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 16 AND fk_eqms_menu_lk_id = 60 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 16 AND fk_eqms_menu_lk_id = 141 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 15 AND fk_eqms_menu_lk_id = 174 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 15 AND fk_eqms_menu_lk_id = 174 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 11 AND fk_eqms_menu_lk_id = 58 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 10 AND fk_eqms_menu_lk_id = 59 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 9 AND fk_eqms_menu_lk_id = 57 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 8 AND fk_eqms_menu_lk_id = 173 AND status = 0;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 7 AND fk_eqms_menu_lk_id = 54 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 6 AND fk_eqms_menu_lk_id = 53 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 5 AND fk_eqms_menu_lk_id = 52 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 4 AND fk_eqms_menu_lk_id = 179 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 1 AND fk_eqms_menu_lk_id = 179 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 4 AND fk_eqms_menu_lk_id = 51 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 97 AND fk_eqms_menu_lk_id = 181 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 3 AND fk_eqms_menu_lk_id = 50 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 3 AND fk_eqms_menu_lk_id = 180 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 2 AND fk_eqms_menu_lk_id = 49 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 1 AND fk_eqms_menu_lk_id = 8 AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 371 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 370 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 144 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 145 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 170 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 169 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 168 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 167 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 166 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 165 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 164 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 163 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 162 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 161 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 159 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 160 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 158 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 157 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 156 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 150 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 149 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 148 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 147 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 146 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 174 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 176 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 175 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 173 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 172 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 171 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 153 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 154 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 155 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 152 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 151 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 291 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 290 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 289 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 288 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 287 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 286 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 285 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 284 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 283 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 282 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 281 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 280 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 279 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 93 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 92 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 248 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 247 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 246 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 245 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 244 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 243 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 242 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 241 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 240 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 239 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 238 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 237 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 236 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 235 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 234 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 233 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 232 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 231 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 230 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 229 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 228 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 227 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 226 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 225 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 224 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 223 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 222 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 221 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 220 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 219 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 218 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 217 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 216 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 215 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 214 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 213 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 212 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 211 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 210 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 209 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 208 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 184 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 189 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 188 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 187 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 186 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 185 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 183 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 143 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 142 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 141 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 140 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 139 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 138 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 137 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 136 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 135 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 134 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 133 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 132 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 131 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 130 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 129 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 128 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 127 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 126 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 125 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 124 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 123 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 122 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 121 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 120 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 119 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 118 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 117 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 116 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 115 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 114 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 113 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 112 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 111 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 110 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 109 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 108 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 107 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 106 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 105 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 104 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 103 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 102 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 101 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 100 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 99 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 98 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 97 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 96 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 95 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 94 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 91 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 90 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 89 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 88 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 87 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 86 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 85 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 84 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 83 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 82 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 81 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 80 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 79 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 63 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 62 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 61 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 60 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 59 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 58 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 57 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 56 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 55 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 54 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 53 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 52 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 51 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 50 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 48 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 47 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 46 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 49 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 22 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 45 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 44 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 43 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 42 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 23 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 41 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 36 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 29 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 23 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 21 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 14 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 7 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 5 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 40 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 39 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 38 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 37 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 35 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 34 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 33 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 32 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 31 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 30 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 28 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 27 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 26 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 25 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 24 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 22 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 20 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 19 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 18 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 17 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 16 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 15 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 13 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 12 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 11 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 10 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 9 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 8 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 6 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 4 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 3 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 2 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 1 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 371 AND fk_eqms_form_id = 45 AND action_name = 'Add New' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 370 AND fk_eqms_form_id = 23 AND action_name = 'Add New' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 291 AND fk_eqms_form_id = 49 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 290 AND fk_eqms_form_id = 49 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 289 AND fk_eqms_form_id = 49 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 288 AND fk_eqms_form_id = 49 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 287 AND fk_eqms_form_id = 49 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 286 AND fk_eqms_form_id = 49 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 285 AND fk_eqms_form_id = 50 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 284 AND fk_eqms_form_id = 44 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 283 AND fk_eqms_form_id = 44 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 282 AND fk_eqms_form_id = 44 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 281 AND fk_eqms_form_id = 44 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 280 AND fk_eqms_form_id = 44 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 279 AND fk_eqms_form_id = 44 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 248 AND fk_eqms_form_id = 50 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 247 AND fk_eqms_form_id = 50 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 246 AND fk_eqms_form_id = 50 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 245 AND fk_eqms_form_id = 50 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 244 AND fk_eqms_form_id = 50 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 243 AND fk_eqms_form_id = 50 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 242 AND fk_eqms_form_id = 47 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 241 AND fk_eqms_form_id = 47 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 240 AND fk_eqms_form_id = 47 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 239 AND fk_eqms_form_id = 47 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 238 AND fk_eqms_form_id = 47 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 237 AND fk_eqms_form_id = 47 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 236 AND fk_eqms_form_id = 34 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 235 AND fk_eqms_form_id = 34 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 234 AND fk_eqms_form_id = 34 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 233 AND fk_eqms_form_id = 34 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 232 AND fk_eqms_form_id = 34 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 231 AND fk_eqms_form_id = 24 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 230 AND fk_eqms_form_id = 24 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 229 AND fk_eqms_form_id = 24 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 228 AND fk_eqms_form_id = 24 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 227 AND fk_eqms_form_id = 24 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 226 AND fk_eqms_form_id = 24 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 225 AND fk_eqms_form_id = 46 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 224 AND fk_eqms_form_id = 46 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 223 AND fk_eqms_form_id = 46 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 222 AND fk_eqms_form_id = 46 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 221 AND fk_eqms_form_id = 46 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 220 AND fk_eqms_form_id = 46 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 219 AND fk_eqms_form_id = 45 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 218 AND fk_eqms_form_id = 45 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 217 AND fk_eqms_form_id = 45 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 216 AND fk_eqms_form_id = 45 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 215 AND fk_eqms_form_id = 45 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 214 AND fk_eqms_form_id = 45 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 213 AND fk_eqms_form_id = 25 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 212 AND fk_eqms_form_id = 25 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 211 AND fk_eqms_form_id = 25 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 210 AND fk_eqms_form_id = 25 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 209 AND fk_eqms_form_id = 25 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 208 AND fk_eqms_form_id = 25 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 189 AND fk_eqms_form_id = 8 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 188 AND fk_eqms_form_id = 8 AND action_name = 'Submit for Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 187 AND fk_eqms_form_id = 8 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 186 AND fk_eqms_form_id = 8 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 185 AND fk_eqms_form_id = 8 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 184 AND fk_eqms_form_id = 8 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 183 AND fk_eqms_form_id = 11 AND action_name = 'Check' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 182 AND fk_eqms_form_id = 17 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 181 AND fk_eqms_form_id = 1 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 180 AND fk_eqms_form_id = 1 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 179 AND fk_eqms_form_id = 1 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 178 AND fk_eqms_form_id = 2 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 177 AND fk_eqms_form_id = 2 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 176 AND fk_eqms_form_id = 35 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 175 AND fk_eqms_form_id = 35 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 174 AND fk_eqms_form_id = 35 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 173 AND fk_eqms_form_id = 35 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 172 AND fk_eqms_form_id = 35 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 171 AND fk_eqms_form_id = 35 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 170 AND fk_eqms_form_id = 34 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 169 AND fk_eqms_form_id = 34 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 168 AND fk_eqms_form_id = 34 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 167 AND fk_eqms_form_id = 34 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 166 AND fk_eqms_form_id = 34 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 165 AND fk_eqms_form_id = 33 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 164 AND fk_eqms_form_id = 33 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 163 AND fk_eqms_form_id = 33 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 162 AND fk_eqms_form_id = 33 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 161 AND fk_eqms_form_id = 33 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 160 AND fk_eqms_form_id = 32 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 159 AND fk_eqms_form_id = 32 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 158 AND fk_eqms_form_id = 32 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 157 AND fk_eqms_form_id = 32 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 156 AND fk_eqms_form_id = 32 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 155 AND fk_eqms_form_id = 31 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 154 AND fk_eqms_form_id = 31 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 153 AND fk_eqms_form_id = 31 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 152 AND fk_eqms_form_id = 31 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 151 AND fk_eqms_form_id = 31 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 150 AND fk_eqms_form_id = 30 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 149 AND fk_eqms_form_id = 30 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 148 AND fk_eqms_form_id = 30 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 147 AND fk_eqms_form_id = 30 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 146 AND fk_eqms_form_id = 30 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 145 AND fk_eqms_form_id = 29 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 144 AND fk_eqms_form_id = 29 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 143 AND fk_eqms_form_id = 29 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 142 AND fk_eqms_form_id = 29 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 141 AND fk_eqms_form_id = 29 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 140 AND fk_eqms_form_id = 28 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 139 AND fk_eqms_form_id = 28 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 138 AND fk_eqms_form_id = 28 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 137 AND fk_eqms_form_id = 28 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 136 AND fk_eqms_form_id = 28 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 135 AND fk_eqms_form_id = 27 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 134 AND fk_eqms_form_id = 27 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 133 AND fk_eqms_form_id = 27 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 132 AND fk_eqms_form_id = 27 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 131 AND fk_eqms_form_id = 27 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 130 AND fk_eqms_form_id = 26 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 129 AND fk_eqms_form_id = 26 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 128 AND fk_eqms_form_id = 26 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 127 AND fk_eqms_form_id = 26 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 126 AND fk_eqms_form_id = 26 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 125 AND fk_eqms_form_id = 23 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 124 AND fk_eqms_form_id = 23 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 123 AND fk_eqms_form_id = 23 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 122 AND fk_eqms_form_id = 23 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 121 AND fk_eqms_form_id = 23 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 120 AND fk_eqms_form_id = 22 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 119 AND fk_eqms_form_id = 22 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 118 AND fk_eqms_form_id = 22 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 117 AND fk_eqms_form_id = 22 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 116 AND fk_eqms_form_id = 22 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 115 AND fk_eqms_form_id = 22 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 114 AND fk_eqms_form_id = 21 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 113 AND fk_eqms_form_id = 21 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 112 AND fk_eqms_form_id = 21 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 111 AND fk_eqms_form_id = 21 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 110 AND fk_eqms_form_id = 21 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 109 AND fk_eqms_form_id = 20 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 108 AND fk_eqms_form_id = 20 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 107 AND fk_eqms_form_id = 20 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 106 AND fk_eqms_form_id = 20 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 105 AND fk_eqms_form_id = 20 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 104 AND fk_eqms_form_id = 19 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 103 AND fk_eqms_form_id = 19 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 102 AND fk_eqms_form_id = 19 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 101 AND fk_eqms_form_id = 19 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 100 AND fk_eqms_form_id = 19 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 99 AND fk_eqms_form_id = 18 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 98 AND fk_eqms_form_id = 18 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 97 AND fk_eqms_form_id = 18 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 96 AND fk_eqms_form_id = 18 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 95 AND fk_eqms_form_id = 18 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 94 AND fk_eqms_form_id = 18 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 93 AND fk_eqms_form_id = 17 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 92 AND fk_eqms_form_id = 17 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 91 AND fk_eqms_form_id = 17 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 90 AND fk_eqms_form_id = 17 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 89 AND fk_eqms_form_id = 17 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 88 AND fk_eqms_form_id = 16 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 87 AND fk_eqms_form_id = 16 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 86 AND fk_eqms_form_id = 16 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 85 AND fk_eqms_form_id = 16 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 84 AND fk_eqms_form_id = 16 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 83 AND fk_eqms_form_id = 15 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 82 AND fk_eqms_form_id = 15 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 81 AND fk_eqms_form_id = 15 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 80 AND fk_eqms_form_id = 15 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 79 AND fk_eqms_form_id = 15 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 63 AND fk_eqms_form_id = 11 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 62 AND fk_eqms_form_id = 11 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 61 AND fk_eqms_form_id = 11 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 60 AND fk_eqms_form_id = 11 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 59 AND fk_eqms_form_id = 11 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 58 AND fk_eqms_form_id = 10 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 57 AND fk_eqms_form_id = 10 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 56 AND fk_eqms_form_id = 10 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 55 AND fk_eqms_form_id = 10 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 54 AND fk_eqms_form_id = 10 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 53 AND fk_eqms_form_id = 2 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 52 AND fk_eqms_form_id = 9 AND action_name = 'Initiate Design Input Gathering' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 51 AND fk_eqms_form_id = 9 AND action_name = 'Submit for Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 50 AND fk_eqms_form_id = 9 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 49 AND fk_eqms_form_id = 9 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 48 AND fk_eqms_form_id = 9 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 47 AND fk_eqms_form_id = 9 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 46 AND fk_eqms_form_id = 9 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 45 AND fk_eqms_form_id = 5 AND action_name = 'Submit for Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 44 AND fk_eqms_form_id = 5 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 43 AND fk_eqms_form_id = 5 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 42 AND fk_eqms_form_id = 5 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 41 AND fk_eqms_form_id = 4 AND action_name = 'CEO Decision' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 40 AND fk_eqms_form_id = 7 AND action_name = 'Start Design' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 39 AND fk_eqms_form_id = 7 AND action_name = 'Generate PND Report' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND fk_eqms_form_id = 7 AND action_name = 'Request Modification' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 37 AND fk_eqms_form_id = 7 AND action_name = 'Initiate Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND fk_eqms_form_id = 7 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND fk_eqms_form_id = 7 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND fk_eqms_form_id = 7 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND fk_eqms_form_id = 7 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND fk_eqms_form_id = 7 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND fk_eqms_form_id = 7 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND fk_eqms_form_id = 6 AND action_name = 'Initiate PND Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND fk_eqms_form_id = 6 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND fk_eqms_form_id = 6 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND fk_eqms_form_id = 6 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND fk_eqms_form_id = 6 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND fk_eqms_form_id = 6 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND fk_eqms_form_id = 6 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND fk_eqms_form_id = 5 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND fk_eqms_form_id = 5 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND fk_eqms_form_id = 4 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND fk_eqms_form_id = 4 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND fk_eqms_form_id = 4 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND fk_eqms_form_id = 4 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND fk_eqms_form_id = 4 AND action_name = 'Send it for CEO Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND fk_eqms_form_id = 4 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND fk_eqms_form_id = 4 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND fk_eqms_form_id = 3 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND fk_eqms_form_id = 3 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND fk_eqms_form_id = 3 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND fk_eqms_form_id = 3 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND fk_eqms_form_id = 3 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND fk_eqms_form_id = 3 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND fk_eqms_form_id = 3 AND action_name = 'Initiate Design Feasibility Study' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_form_id = 2 AND action_name = 'Add New' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND fk_eqms_form_id = 2 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_form_id = 1 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_form_id = 1 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_form_id = 1 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_form_id = 1 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_form_id = 1 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 115 AND form_name = 'Acknowledge Design Transfer Check List Record Generation Form' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'design_transfer_check_list_record_generation_form';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 114 AND form_name = 'Design Inputs to Output Traceability Matrix Record Generation Form' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'design_inputs_to_output_traceability_matrix_record_generation_form';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 113 AND form_name = 'Design Output File Record Generation Form' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'design_output_file_record_generation_form';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 112 AND form_name = 'Product Life Declaration Record Generation Form' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'product_life_declaration_record_generation_form';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 111 AND form_name = 'Design Validation Report Record Generation Form' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'design_validation_report_record_generation_form';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 110 AND form_name = 'Design Validation Plan Record Generation Form' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'design_validation_plan_record_generation_form';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 109 AND form_name = 'Design Verification Plan Record Generation Form' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'design_verification_plan_record_generation_form';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 108 AND form_name = 'Design Quality Plan Record Generation Form' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'design_quality_plan_record_generation_form';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 107 AND form_name = 'Design Input Adequacy Check List Record Generation Form' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'design_input_adequacy_check_list_record_generation_form';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 106 AND form_name = 'Intended Use Record Generation Form' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'intended_use_record_generation_form';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 105 AND form_name = 'Design Project Plan Record Generation Form' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'design_project_plan_record_generation_form';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 104 AND form_name = 'PND Project Review Report Record Generation Form' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'pnd_project_review_report_record_generation_form';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 103 AND form_name = 'Product Need Document Record Generation Form' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'product_need_document_record_generation_form';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 102 AND form_name = 'Product Realisation Plan Record Generation Form' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'product_realisation_plan_record_generation_form';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 97 AND form_name = 'Feasibility Study Record Generation' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'feasibility_study_record_generation';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 75 AND form_name = 'Design History File' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = true AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 50 AND form_name = 'prototype design Review report' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = true AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 49 AND form_name = 'Product Life Declaration' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 47 AND form_name = 'pilot design Review report' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = true AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 46 AND form_name = 'pilot verification report' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 45 AND form_name = 'pilot verification plan' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 44 AND form_name = 'Pilot' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = true AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND form_name = 'pilot Validation Plan' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = true AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND form_name = 'Initiate Manufacturing License' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND form_name = 'Acknowledgement of design Transfer' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND form_name = 'I/O Traceability Matrix' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND form_name = 'QMS Clause Applicability' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND form_name = 'Design Output Document' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND form_name = 'Add Installation Procedure' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND form_name = 'clinical evaluation' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND form_name = 'initiate test license' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND form_name = 'pre transfer design output document' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND form_name = 'Design Quality Report' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND form_name = 'prototype verification report' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND form_name = 'prototype verification plan' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND form_name = 'prototype' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND form_name = 'concept' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND form_name = 'design Quality plan' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND form_name = 'Design input adequacy checklist' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND form_name = 'DIR' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND form_name = 'Intended Use' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND form_name = 'Specification' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND form_name = 'Pilot validation Report' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = true AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND form_name = 'Applicable specification' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = true AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND form_name = 'Functional Block' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = true AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND form_name = 'Design Project Plan' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND form_name = 'UAT Validation Plan' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = true AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND form_name = 'PND Review' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND form_name = 'PND' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND form_name = 'Product Realization Plan' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND form_name = 'Feasibility Study' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND form_name = 'HLD' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND form_name = 'Market research and study' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND form_name = 'Project' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from organization.eqms_entity_subscription
DELETE FROM organization.eqms_entity_subscription WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_subscribed_module_id = 1 AND subscription_status = 1;

-- Delete from organization.eqms_module
DELETE FROM organization.eqms_module WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND module_name = 'Design & Development' AND module_type = 1 AND module_slug = 'design-development' AND status = 1;

END $$;
