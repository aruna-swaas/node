ALTER TABLE ONLY organization.eqms_pre_prod_incoming_inspection_spec_criteria_lk
    ADD CONSTRAINT unique_eiisc_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_pre_prod_incoming_inspection_spec_criteria_lk
    ADD CONSTRAINT fk_eiiscl_incoming_inspection_spec_group_lk_is FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_pre_prod_incoming_inspection_spec_group_lk_id) REFERENCES organization.eqms_pre_prod_incoming_inspection_spec_group_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_pre_prod_incoming_inspection_spec_criteria_lk
    ADD CONSTRAINT fk_eiiscl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

