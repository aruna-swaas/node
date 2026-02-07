ALTER TABLE ONLY risk_management.eqms_risk
    ADD CONSTRAINT fk_er_project_risk_severity_level_id FOREIGN KEY (fk_eqms_project_risk_severity_level_id) REFERENCES risk_management.eqms_project_risk_severity_level(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

