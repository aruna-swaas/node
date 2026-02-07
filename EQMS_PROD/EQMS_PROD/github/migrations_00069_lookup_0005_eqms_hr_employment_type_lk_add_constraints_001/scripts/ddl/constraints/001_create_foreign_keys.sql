ALTER TABLE ONLY hrcs.eqms_hr_role_definition
    ADD CONSTRAINT fk_ehcs_hr_employment_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_hr_employment_type_lk_id) REFERENCES organization.eqms_hr_employment_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

