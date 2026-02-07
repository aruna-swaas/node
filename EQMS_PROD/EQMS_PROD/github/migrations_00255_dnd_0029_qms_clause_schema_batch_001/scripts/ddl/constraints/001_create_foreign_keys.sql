ALTER TABLE ONLY dnd.eqms_product_applicable_clause
    ADD CONSTRAINT fk_epac_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_product_applicable_clause
    ADD CONSTRAINT fk_epac_organization_product_id FOREIGN KEY (fk_eqms_organization_product_id) REFERENCES organization.eqms_organization_product(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_product_applicable_clause
    ADD CONSTRAINT fk_epac_regulation_standard_clause_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_regulation_standard_clause_id) REFERENCES organization.eqms_regulation_standard_clause(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

