ALTER TABLE ONLY risk_management.eqms_risk_category_applicability
    ADD CONSTRAINT fk_erca_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_category_applicability
    ADD CONSTRAINT fk_erca_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_category_applicability
    ADD CONSTRAINT fk_erca_risk_category_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_risk_category_lk_id) REFERENCES organization.eqms_risk_category_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_subcategory_applicability
    ADD CONSTRAINT fk_era_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_subcategory_applicability
    ADD CONSTRAINT fk_ersa_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_subcategory_applicability
    ADD CONSTRAINT fk_era_risk_category_applicability_id FOREIGN KEY (fk_eqms_risk_category_applicability_id) REFERENCES risk_management.eqms_risk_category_applicability(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

