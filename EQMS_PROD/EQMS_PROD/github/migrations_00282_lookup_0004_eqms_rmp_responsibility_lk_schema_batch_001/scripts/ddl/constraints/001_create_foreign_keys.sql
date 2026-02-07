ALTER TABLE ONLY organization.eqms_rmp_responsibility_lk
    ADD CONSTRAINT eqms_rmp_responsibility_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_rmp_responsibility_lk
    ADD CONSTRAINT fk_errl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_rmp_responsibility_lk
    ADD CONSTRAINT fk_errl_rmp_applicable_stage_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_rmp_applicable_stage_lk_id) REFERENCES organization.eqms_rmp_applicable_stage_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

