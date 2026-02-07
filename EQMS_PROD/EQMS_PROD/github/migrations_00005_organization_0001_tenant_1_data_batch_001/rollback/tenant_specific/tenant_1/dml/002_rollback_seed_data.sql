-- Rollback: Delete seed data from file 005_nomenclature_configuration_lookup_data.sql
-- Original file: 005_nomenclature_configuration_lookup_data.sql
-- Seed data file: 002_seed_data.sql
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

-- Delete from organization.eqms_nomenclature_category
DELETE FROM organization.eqms_nomenclature_category WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND entity_type = 'DIR' AND description = 'Specification DIR id' AND status = 1;

-- Delete from organization.eqms_nomenclature_category
DELETE FROM organization.eqms_nomenclature_category WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND entity_type = 'RECORD_GENERATION' AND description = 'Document nomenclature category' AND status = 1;

-- Delete from organization.eqms_nomenclature_join_type
DELETE FROM organization.eqms_nomenclature_join_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND join_type = 'RIGHT' AND status = 1;

-- Delete from organization.eqms_nomenclature_join_type
DELETE FROM organization.eqms_nomenclature_join_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND join_type = 'LEFT' AND status = 1;

-- Delete from organization.eqms_nomenclature_join_type
DELETE FROM organization.eqms_nomenclature_join_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND join_type = 'INNER' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_type
DELETE FROM organization.eqms_nomenclature_part_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND part_type = 'sequence' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_type
DELETE FROM organization.eqms_nomenclature_part_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND part_type = 'dynamic' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_type
DELETE FROM organization.eqms_nomenclature_part_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND part_type = 'static' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_type
DELETE FROM organization.eqms_nomenclature_part_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND part_type = 'date' AND status = 1;

END $$;
