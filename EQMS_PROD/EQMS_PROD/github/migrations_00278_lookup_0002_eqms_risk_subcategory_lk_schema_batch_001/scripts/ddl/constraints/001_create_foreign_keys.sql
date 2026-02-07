ALTER TABLE ONLY organization.eqms_risk_subcategory_lk
    ADD CONSTRAINT eqms_risk_subcategory_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_risk_subcategory_lk
    ADD CONSTRAINT fk_ersl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_risk_subcategory_lk
    ADD CONSTRAINT fk_ersl_risk_category_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_risk_category_lk_id) REFERENCES organization.eqms_risk_category_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

