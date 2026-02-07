DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN

INSERT INTO organization.eqms_nomenclature_part_type (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, part_type, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'date', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'static', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'dynamic', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'sequence', 1, NOW(), 1);

INSERT INTO organization.eqms_nomenclature_join_type (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, join_type, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'INNER', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'LEFT', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'RIGHT', 1, NOW(), 1);

INSERT INTO organization.eqms_nomenclature_category (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, entity_type, description, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'RECORD_GENERATION', 'Document nomenclature category', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'DIR', 'Specification DIR id', 1, NOW(), 1);

END $$;