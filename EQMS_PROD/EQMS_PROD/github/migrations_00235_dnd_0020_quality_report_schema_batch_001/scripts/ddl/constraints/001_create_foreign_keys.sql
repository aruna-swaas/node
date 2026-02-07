ALTER TABLE ONLY dnd.eqms_project_quality_reports
    ADD CONSTRAINT fk_epqr_design_stage_item_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_design_stage_item_lk_id) REFERENCES organization.eqms_design_stage_item_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_quality_reports
    ADD CONSTRAINT fk_epqr_project_quality_plan_id FOREIGN KEY (fk_eqms_project_quality_plan_id) REFERENCES dnd.eqms_project_quality_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_quality_reports
    ADD CONSTRAINT fk_epqs_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_quality_reports_supporting_file
    ADD CONSTRAINT fk_epqrsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_quality_reports_supporting_file
    ADD CONSTRAINT fk_epvd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_quality_reports_supporting_file
    ADD CONSTRAINT fk_epqrsf_project_quality_reports_id FOREIGN KEY (fk_eqms_project_quality_reports_id) REFERENCES dnd.eqms_project_quality_reports(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_quality_specifications
    ADD CONSTRAINT fk_epqs_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_quality_specifications
    ADD CONSTRAINT fk_epqs_project_quality_plan_id FOREIGN KEY (fk_eqms_project_quality_plan_id) REFERENCES dnd.eqms_project_quality_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_quality_specifications
    ADD CONSTRAINT fk_eqms_dir_id FOREIGN KEY (fk_eqms_dir_id) REFERENCES dnd.eqms_design_input_requirement(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

