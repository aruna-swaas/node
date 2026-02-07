ALTER TABLE ONLY risk_management.eqms_individual_residual_risk_analysis
    ADD CONSTRAINT fk_eirra_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_individual_residual_risk_analysis
    ADD CONSTRAINT fk_eirra_risk_id FOREIGN KEY (fk_eqms_risk_id) REFERENCES risk_management.eqms_risk(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_individual_residual_risk_analysis
    ADD CONSTRAINT fk_eirra_selection_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_selection_lk_id) REFERENCES organization.eqms_selection_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

