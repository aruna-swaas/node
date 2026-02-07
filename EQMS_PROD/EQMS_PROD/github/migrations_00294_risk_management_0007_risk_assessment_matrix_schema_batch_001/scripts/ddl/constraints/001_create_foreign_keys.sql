ALTER TABLE ONLY risk_management.eqms_risk_assessment_matrix_template
    ADD CONSTRAINT eqms_risk_assessment_matrix_template_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY risk_management.eqms_project_risk_assessment_matrix
    ADD CONSTRAINT fk_epram_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_project_risk_assessment_matrix
    ADD CONSTRAINT fk_epram_project_risk_probability_level_id FOREIGN KEY (fk_eqms_project_risk_probability_level_id) REFERENCES risk_management.eqms_project_risk_probability_level(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_project_risk_assessment_matrix
    ADD CONSTRAINT fk_epram_project_risk_severity_level_id FOREIGN KEY (fk_eqms_project_risk_severity_level_id) REFERENCES risk_management.eqms_project_risk_severity_level(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_assessment_matrix_template
    ADD CONSTRAINT fk_eramt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_assessment_matrix_template
    ADD CONSTRAINT fk_eramt_risk_probability_level_template_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_risk_probability_level_template_id) REFERENCES organization.eqms_risk_probability_level_template(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_assessment_matrix_template
    ADD CONSTRAINT fk_eramt_risk_severity_level_template_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_risk_severity_level_template_id) REFERENCES organization.eqms_risk_severity_level_template(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_project_risk_assessment_matrix
    ADD CONSTRAINT fk_epram_risk_assessment_matrix_template_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_risk_assessment_matrix_template_id) REFERENCES risk_management.eqms_risk_assessment_matrix_template(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

