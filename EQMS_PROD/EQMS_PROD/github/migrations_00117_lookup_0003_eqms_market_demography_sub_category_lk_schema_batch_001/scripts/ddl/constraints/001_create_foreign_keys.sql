ALTER TABLE ONLY organization.eqms_market_demography_sub_category_lk
    ADD CONSTRAINT eqms_market_demography_sub_category_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_market_demography_sub_category_lk
    ADD CONSTRAINT fk_emdscl_market_demography_category_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_market_demography_category_lk_id) REFERENCES organization.eqms_market_demography_category_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_market_demography_sub_category_lk
    ADD CONSTRAINT fk_emdscl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

