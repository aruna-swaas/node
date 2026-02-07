ALTER TABLE ONLY risk_management.eqms_project_risk_probability_level
    ADD CONSTRAINT fk_eprpl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_project_risk_probability_level
    ADD CONSTRAINT fk_eprpl_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_project_risk_probability_level
    ADD CONSTRAINT fk_erppt_risk_probability_level_template_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_risk_probability_level_template_id) REFERENCES organization.eqms_risk_probability_level_template(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_project_risk_severity_level
    ADD CONSTRAINT fk_eprsl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_project_risk_severity_level
    ADD CONSTRAINT fk_eprsl_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_project_risk_severity_level
    ADD CONSTRAINT fk_erpst_risk_severity_level_template_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_risk_severity_level_template_id) REFERENCES organization.eqms_risk_severity_level_template(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

