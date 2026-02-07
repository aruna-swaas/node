ALTER TABLE ONLY risk_management.eqms_rmp_residual_risk_acceptability_criteria
    ADD CONSTRAINT fk_errrac_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_residual_risk_acceptability_criteria
    ADD CONSTRAINT fk_errrac_project_risk_probability_level_id FOREIGN KEY (fk_eqms_project_risk_probability_level_id) REFERENCES risk_management.eqms_project_risk_probability_level(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_residual_risk_acceptability_criteria
    ADD CONSTRAINT fk_errrac_project_risk_severity_level_id FOREIGN KEY (fk_eqms_project_risk_severity_level_id) REFERENCES risk_management.eqms_project_risk_severity_level(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_residual_risk_acceptability_criteria
    ADD CONSTRAINT fk_errrac_rmp_residual_risk_acceptability_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_rmp_residual_risk_acceptability_type_lk_id) REFERENCES organization.eqms_rmp_residual_risk_acceptability_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

