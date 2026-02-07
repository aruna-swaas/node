ALTER TABLE ONLY dnd.eqms_design_review_attended_members
    ADD CONSTRAINT fk_edram_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_review_attended_members
    ADD CONSTRAINT fk_edram_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_review_attended_members
    ADD CONSTRAINT fk_edram_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_review_report_documents
    ADD CONSTRAINT fk_edrrd_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_review_report_documents
    ADD CONSTRAINT fk_edrrd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_design_review_report
    ADD CONSTRAINT fk_eesdrr_execution_stage_id FOREIGN KEY (fk_eqms_execution_stage_id) REFERENCES dnd.eqms_execution_stage(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_design_review_report
    ADD CONSTRAINT fk_eesdrr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_review_attended_members
    ADD CONSTRAINT fk_edram_execution_stage_design_review_report_id FOREIGN KEY (fk_eqms_execution_stage_design_review_report_id) REFERENCES dnd.eqms_execution_stage_design_review_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_review_report_documents
    ADD CONSTRAINT fk_edrrd_execution_stage_design_review_report_id FOREIGN KEY (fk_eqms_execution_stage_design_review_report_id) REFERENCES dnd.eqms_execution_stage_design_review_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

