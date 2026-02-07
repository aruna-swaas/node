ALTER TABLE ONLY organization.eqms_regulation_standard_clause
    ADD CONSTRAINT eqms_regulation_standard_clause_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_regulation_standard_clause
    ADD CONSTRAINT fk_ersc_clause_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_clause_lk_id) REFERENCES organization.eqms_clause_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_regulation_standard_clause
    ADD CONSTRAINT fk_ersc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_regulation_standard_clause
    ADD CONSTRAINT fk_ersc_regulation_standard_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_regulation_standard_id) REFERENCES organization.eqms_regulation_standard(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

