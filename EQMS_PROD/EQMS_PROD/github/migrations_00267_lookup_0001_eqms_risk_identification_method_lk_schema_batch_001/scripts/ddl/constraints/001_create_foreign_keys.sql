ALTER TABLE ONLY organization.eqms_risk_identification_method_lk
    ADD CONSTRAINT eqms_risk_identification_method_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_risk_identification_method_lk
    ADD CONSTRAINT fk_eriml_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

