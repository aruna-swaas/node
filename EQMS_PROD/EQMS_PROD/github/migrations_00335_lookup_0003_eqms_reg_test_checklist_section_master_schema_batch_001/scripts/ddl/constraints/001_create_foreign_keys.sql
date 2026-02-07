ALTER TABLE ONLY organization.eqms_reg_test_checklist_section_master
    ADD CONSTRAINT eqms_reg_test_checklist_section_master_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_reg_test_checklist_section_master
    ADD CONSTRAINT fk_ertcs_eqms_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY organization.eqms_reg_test_checklist_section_master
    ADD CONSTRAINT fk_ertcs_eqms_reg_test_license_template_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_reg_test_license_template_id) REFERENCES organization.eqms_reg_test_license_template(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

