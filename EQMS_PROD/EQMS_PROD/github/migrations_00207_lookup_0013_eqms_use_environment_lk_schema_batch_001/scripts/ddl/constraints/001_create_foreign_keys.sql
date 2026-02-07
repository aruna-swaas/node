ALTER TABLE ONLY organization.eqms_use_environment_lk
    ADD CONSTRAINT uk_euel_tenant_org_ref UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_use_environment_lk
    ADD CONSTRAINT fk_euel_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

