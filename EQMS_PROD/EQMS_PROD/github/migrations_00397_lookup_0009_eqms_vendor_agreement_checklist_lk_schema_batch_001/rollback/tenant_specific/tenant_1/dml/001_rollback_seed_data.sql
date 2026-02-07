-- Rollback: Delete seed data from file lookup_only_001_LOOKUP.sql
-- Original file: lookup_only_001_LOOKUP.sql
-- Seed data file: 001_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

-- Delete from organization.eqms_vendor_agreement_checklist_lk
DELETE FROM organization.eqms_vendor_agreement_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND check_list_item = 'Supplier agrees to be audited by third party audits, such as certification bodies or notified bodies or customers of O2-Matic' AND status = 1;

-- Delete from organization.eqms_vendor_agreement_checklist_lk
DELETE FROM organization.eqms_vendor_agreement_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND check_list_item = 'Supplier agrees to be audited by O2-Matic with prior intimation of such audits' AND status = 1;

-- Delete from organization.eqms_vendor_agreement_checklist_lk
DELETE FROM organization.eqms_vendor_agreement_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND check_list_item = 'Supplier shall carry out corrective action requested by O2-Matic and shall perform corrective actions and provide updates on its effectiveness' AND status = 1;

-- Delete from organization.eqms_vendor_agreement_checklist_lk
DELETE FROM organization.eqms_vendor_agreement_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND check_list_item = 'Any non-conformed products arise out of manufacturing for O2-Matic, Supplier shall follow disposition procedure as provided by O2-Matic' AND status = 1;

-- Delete from organization.eqms_vendor_agreement_checklist_lk
DELETE FROM organization.eqms_vendor_agreement_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND check_list_item = 'If any deviation is to be made to the requirements or output by the Supplier, such deviations shall be documented and to be approved by O2-Matic before acceptance' AND status = 1;

-- Delete from organization.eqms_vendor_agreement_checklist_lk
DELETE FROM organization.eqms_vendor_agreement_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND check_list_item = 'Supplier shall inform O2-Matic if any changes to the product is to be made and O2-Matic and supplier shall mutually agree to the changes and document the same' AND status = 1;

-- Delete from organization.eqms_vendor_agreement_checklist_lk
DELETE FROM organization.eqms_vendor_agreement_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND check_list_item = 'Supplier shall employ competent employees for carrying out responsibilities for producing results as per defined requirements' AND status = 1;

-- Delete from organization.eqms_vendor_agreement_checklist_lk
DELETE FROM organization.eqms_vendor_agreement_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND check_list_item = 'Any computer software or automated process are used in manufacturing shall be validated by the supplier prior to use of it in making the products for O2-Matic' AND status = 1;

-- Delete from organization.eqms_vendor_agreement_checklist_lk
DELETE FROM organization.eqms_vendor_agreement_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND check_list_item = 'Any equipment or test equipment used by Supplier shall be appropriate for manufacture or testing of the product to be manufactured by supplier and shall be calibrated at all times' AND status = 1;

-- Delete from organization.eqms_vendor_agreement_checklist_lk
DELETE FROM organization.eqms_vendor_agreement_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND check_list_item = 'Any change to specification requirement already provided to supplier shall be provided to Supplier by O2-Matic and the obsolete documents shall be either returned or destroyed by Supplier' AND status = 1;

-- Delete from organization.eqms_vendor_agreement_checklist_lk
DELETE FROM organization.eqms_vendor_agreement_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND check_list_item = 'Specification requirements shall not be modified by Supplier' AND status = 1;

-- Delete from organization.eqms_vendor_agreement_checklist_lk
DELETE FROM organization.eqms_vendor_agreement_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND check_list_item = 'The parts supplied by Supplier shall confirm to Specification requirements provided by O2-Matic' AND status = 1;

END $$;
