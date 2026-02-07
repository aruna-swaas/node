DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

-- eqms_vendor_type_lk
INSERT INTO organization.eqms_vendor_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, vendor_type, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Part', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Medical Device', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Services', 1, NOW(), 1, NULL, NULL);

-- eqms_vendor_re_evaluation_frequency_lk
INSERT INTO organization.eqms_vendor_re_evaluation_frequency_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, vendor_re_evaluation_frequency, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Quarterly', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Monthly', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Half-yearly', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Yearly', 1, NOW(), 1, NULL, NULL);

-- eqms_vendor_agreement_checklist_lk
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

-- eqms_requirement_lk
INSERT INTO organization.eqms_requirement_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, requirement_type, status, created_date, created_by, modified_date, modified_by, slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Mandatory', 1, NOW(), 1, NULL, NULL, 'mandatory'),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Desirable', 1, NOW(), 1, NULL, NULL, 'desirable');
-- eqms_vendor_selection_group_lk
INSERT INTO organization.eqms_vendor_selection_group_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, group_name, vendor_group_type, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'QMS', 'system_defined', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Facilities', 'system_defined', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Processes', 'system_defined', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Materials', 'system_defined', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Data Format', 'system_defined', 1, NOW(), 1, NULL, NULL);


-- eqms_vendor_selection_group_criteria_lk
INSERT INTO organization.eqms_vendor_selection_group_criteria_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, criteria, vendor_group_criteria_type, status, created_date, created_by, modified_date, modified_by, fk_eqms_vendor_selection_group_lk_id, fk_eqms_requirement_lk_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Is the company ISO 9001:2015', 'system_defined', 1, NOW(), 1, NULL, NULL, 1, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Pick & Place Machine', 'system_defined', 1, NOW(), 1, NULL, NULL, 2, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Stencil Developer', 'system_defined', 1, NOW(), 1, NULL, 2, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Fluxer', 'system_defined', 1, NOW(), 1, NULL, NULL, 2, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'ICT', 'system_defined', 1, NOW(), 1, NULL, NULL, 2, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'BGA Workstation', 'system_defined', 1, NOW(), 1, NULL, NULL, 2, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Stencil Making', 'system_defined', 1, NOW(), 1, NULL, NULL, 3, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'ROHS line', 'system_defined', 1, NOW(), 1, NULL, NULL, 3, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'Through Hole Soldering', 'system_defined', 1, NOW(), 1, NULL, NULL, 3, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 'Ultrasonic Cleaning', 'system_defined', 1, NOW(), 1, NULL, NULL, 3, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'Assembly Testing', 'system_defined', 1, NOW(), 1, NULL, NULL, 3, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'Size of Components (12x10)', 'system_defined', 1, NOW(), 1, NULL, NULL, 4, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'No of Layers of PCB', 'system_defined', 1, NOW(), 1, NULL, NULL, 4, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'Gerber Software', 'system_defined', 1, NOW(), 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 'Paper of PDF', 'system_defined', 1, NOW(), 1, NULL, NULL, NULL, NULL);

-- eqms_vendor_re_evaluation_group_lk
INSERT INTO organization.eqms_vendor_re_evaluation_group_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, group_name, vendor_group_type, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'QMS', 'system_defined', 1, NOW(), NULL, NULL, NULL);

-- eqms_vendor_re_evaluation_group_criteria_lk
INSERT INTO organization.eqms_vendor_re_evaluation_group_criteria_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, criteria, vendor_group_criteria_type, status, created_date, created_by, modified_date, modified_by, fk_eqms_vendor_re_evaluation_group_lk_id, fk_eqms_requirement_lk_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Is the company ISO 9001:2015', 'system_defined', 1, NOW(), NULL, NULL, NULL, 1, 1);



-- ============================================
-- VENDOR SCHEMA LOOKUP TABLES
-- ============================================


-- eqms_performance_rating_lk
INSERT INTO organization.eqms_performance_rating_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, rating, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 1, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 2, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 3, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 4, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 5, 1, NOW(), 1, NULL, NULL);

-- eqms_part_category_type_lk
INSERT INTO organization.eqms_part_category_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, part_category_type, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Electrical', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Mechanical', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Optical', 1, NOW(), 1, NULL, NULL);

-- eqms_part_subcategory_type_lk
INSERT INTO organization.eqms_part_subcategory_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_category_type_lk_id, ref_id, part_subcategory_type, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 1, 'Active Components', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 2, 'Passive Components', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 3, 'Connectors', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 4, 'Sensors', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 5, 'Actuators', 1, NOW(), 1, NULL, NULL);

-- eqms_part_category_subclass_lk
INSERT INTO organization.eqms_part_category_subclass_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_part_subcategory_type_lk_id, part_category_subclass, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 1, 'Microprocessors', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 1, 'Memory Chips', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 2, 'Resistors', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 2, 'Capacitors', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 3, 'USB Connectors', 1, NOW(), 1, NULL, NULL);

END $$;
