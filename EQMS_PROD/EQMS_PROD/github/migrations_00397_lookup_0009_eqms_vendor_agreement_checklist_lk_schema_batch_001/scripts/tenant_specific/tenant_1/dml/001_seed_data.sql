DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_vendor_agreement_checklist_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, check_list_item, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'The parts supplied by Supplier shall confirm to Specification requirements provided by O2-Matic', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Specification requirements shall not be modified by Supplier', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Any change to specification requirement already provided to supplier shall be provided to Supplier by O2-Matic and the obsolete documents shall be either returned or destroyed by Supplier', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Any equipment or test equipment used by Supplier shall be appropriate for manufacture or testing of the product to be manufactured by supplier and shall be calibrated at all times', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Any computer software or automated process are used in manufacturing shall be validated by the supplier prior to use of it in making the products for O2-Matic', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Supplier shall employ competent employees for carrying out responsibilities for producing results as per defined requirements', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Supplier shall inform O2-Matic if any changes to the product is to be made and O2-Matic and supplier shall mutually agree to the changes and document the same', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'If any deviation is to be made to the requirements or output by the Supplier, such deviations shall be documented and to be approved by O2-Matic before acceptance', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'Any non-conformed products arise out of manufacturing for O2-Matic, Supplier shall follow disposition procedure as provided by O2-Matic', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 'Supplier shall carry out corrective action requested by O2-Matic and shall perform corrective actions and provide updates on its effectiveness', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'Supplier agrees to be audited by O2-Matic with prior intimation of such audits', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'Supplier agrees to be audited by third party audits, such as certification bodies or notified bodies or customers of O2-Matic', 1, NOW(), 1, NULL, NULL);

END $$;
