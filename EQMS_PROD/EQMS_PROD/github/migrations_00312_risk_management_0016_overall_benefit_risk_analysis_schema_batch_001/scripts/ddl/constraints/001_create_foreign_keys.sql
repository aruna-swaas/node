ALTER TABLE ONLY risk_management.eqms_rm_benefit_risk_anlysis
    ADD CONSTRAINT fk_erbra_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rm_benefit_risk_anlysis
    ADD CONSTRAINT fk_erbra_rmp_residual_risk_acceptability_criteria_id FOREIGN KEY (fk_eqms_rmp_residual_risk_acceptability_criteria_id) REFERENCES risk_management.eqms_rmp_residual_risk_acceptability_criteria(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

