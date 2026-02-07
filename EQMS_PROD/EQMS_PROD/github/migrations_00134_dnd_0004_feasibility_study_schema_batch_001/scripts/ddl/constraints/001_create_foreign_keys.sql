ALTER TABLE ONLY dnd.eqms_feasibility_study_report
    ADD CONSTRAINT project_study_report UNIQUE (fk_eqms_project_id);

ALTER TABLE ONLY dnd.eqms_feasibility_decision
    ADD CONSTRAINT fk_efd_feasibility_decision_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_feasibility_decision_lk_id) REFERENCES organization.eqms_feasibility_decision_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_feasibility_decision
    ADD CONSTRAINT fk_efd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_feasibility_study_cost_report
    ADD CONSTRAINT fk_efscr_cost_heading_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_cost_heading_lk_id) REFERENCES organization.eqms_cost_heading_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_feasibility_study_cost_report
    ADD CONSTRAINT fk_efsr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_feasibility_study_design_team_role
    ADD CONSTRAINT fk_efsdtr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_feasibility_study_report
    ADD CONSTRAINT fk_efscr_feasibility_currency_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_feasibility_currency_lk_id) REFERENCES organization.eqms_feasibility_currency_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_feasibility_study_report
    ADD CONSTRAINT fk_efsr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_feasibility_study_report
    ADD CONSTRAINT fk_eqms_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_feasibility_decision
    ADD CONSTRAINT fk_efd_feasibility_study_report_id FOREIGN KEY (fk_eqms_feasibility_study_report_id) REFERENCES dnd.eqms_feasibility_study_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_feasibility_study_cost_report
    ADD CONSTRAINT fk_eqms_feasibility_study_report_id FOREIGN KEY (fk_eqms_feasibility_study_report_id) REFERENCES dnd.eqms_feasibility_study_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_feasibility_study_design_team_role
    ADD CONSTRAINT fk_eqms_feasibility_study_report_id FOREIGN KEY (fk_eqms_feasibility_study_report_id) REFERENCES dnd.eqms_feasibility_study_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_feasibility_study_report_supporting_files
    ADD CONSTRAINT fk_efsrsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_feasibility_study_report_supporting_files
    ADD CONSTRAINT fk_efsrsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_feasibility_study_report_supporting_files
    ADD CONSTRAINT fk_efsrsf_feasibility_study_report_id FOREIGN KEY (fk_eqms_feasibility_study_report_id) REFERENCES dnd.eqms_feasibility_study_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_feasibility_validation
    ADD CONSTRAINT fk_efv_feasibility_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_feasibility_type_lk_id) REFERENCES organization.eqms_feasibility_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_feasibility_validation
    ADD CONSTRAINT fk_efv_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_feasibility_validation
    ADD CONSTRAINT fk_efv_feasibility_decision_id FOREIGN KEY (fk_eqms_feasibility_decision_id) REFERENCES dnd.eqms_feasibility_decision(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

