ALTER TABLE ONLY risk_management.eqms_risk_control_measure
    ADD CONSTRAINT eqms_risk_control_measure_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, rcm_code);

ALTER TABLE ONLY risk_management.eqms_risk_control_measure
    ADD CONSTRAINT fk_ercm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_control_measure
    ADD CONSTRAINT fk_ercm_project_risk_probability_level_id FOREIGN KEY (fk_eqms_project_risk_probability_level_id) REFERENCES risk_management.eqms_project_risk_probability_level(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_control_measure
    ADD CONSTRAINT fk_ercm_project_risk_severity_level_id FOREIGN KEY (fk_eqms_project_risk_severity_level_id) REFERENCES risk_management.eqms_project_risk_severity_level(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_control_measure
    ADD CONSTRAINT fk_ercm_rcm_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_rcm_type_lk_id) REFERENCES organization.eqms_rcm_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_control_measure
    ADD CONSTRAINT fk_ercm_risk_id FOREIGN KEY (fk_eqms_risk_id) REFERENCES risk_management.eqms_risk(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_control_measure
    ADD CONSTRAINT fk_ercm_selection_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_selection_lk_id) REFERENCES organization.eqms_selection_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

