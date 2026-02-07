ALTER TABLE ONLY organization.eqms_vendor_selection_group_criteria_lk
    ADD CONSTRAINT uk_egclk_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_vendor_selection_group_criteria_lk
    ADD CONSTRAINT fk_evgcl_requirement_lk_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_requirement_lk_id) REFERENCES organization.eqms_requirement_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_vendor_selection_group_criteria_lk
    ADD CONSTRAINT fk_evgcl_vendor_selection_group_lk_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_vendor_selection_group_lk_id) REFERENCES organization.eqms_vendor_selection_group_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

