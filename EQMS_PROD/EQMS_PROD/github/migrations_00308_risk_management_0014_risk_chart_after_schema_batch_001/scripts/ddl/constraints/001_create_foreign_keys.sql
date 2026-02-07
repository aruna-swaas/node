ALTER TABLE ONLY risk_management.eqms_rm_after_mitigation_matrix
    ADD CONSTRAINT fk_eramm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rm_after_mitigation_matrix
    ADD CONSTRAINT fk_eramm_project_risk_probability_level_id FOREIGN KEY (fk_eqms_project_risk_probability_level_id) REFERENCES risk_management.eqms_project_risk_probability_level(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rm_after_mitigation_matrix
    ADD CONSTRAINT fk_eramm_project_risk_severity_level_id FOREIGN KEY (fk_eqms_project_risk_severity_level_id) REFERENCES risk_management.eqms_project_risk_severity_level(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rm_after_mitigation_matrix
    ADD CONSTRAINT fk_eramm_risk_id FOREIGN KEY (fk_eqms_risk_id) REFERENCES risk_management.eqms_risk(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

