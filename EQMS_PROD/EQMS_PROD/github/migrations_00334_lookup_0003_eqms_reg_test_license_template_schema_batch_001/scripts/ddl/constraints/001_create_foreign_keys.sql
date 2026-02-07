ALTER TABLE ONLY organization.eqms_reg_test_license_template
    ADD CONSTRAINT eqms_reg_test_license_template_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_reg_test_license_template
    ADD CONSTRAINT fk_ertlt_eqms_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

