ALTER TABLE ONLY dnd.eqms_pilot_validation_report
    ADD CONSTRAINT fk_epvr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_report
    ADD CONSTRAINT fk_epvr_pilot_validation_place_id FOREIGN KEY (fk_eqms_pilot_validation_place_id) REFERENCES dnd.eqms_pilot_validation_place(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_report_feedback_details
    ADD CONSTRAINT fk_epvrfd_decision_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_decision_lk_id) REFERENCES organization.eqms_decision_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_report_feedback_details
    ADD CONSTRAINT fk_epvrfd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_report_feedback_details
    ADD CONSTRAINT fk_epvrfd_product_functional_blocks_id FOREIGN KEY (fk_eqms_product_functional_blocks_id) REFERENCES dnd.eqms_product_functional_blocks(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_report_feedback_details
    ADD CONSTRAINT fk_epvrfd_selection_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_selection_lk_id) REFERENCES organization.eqms_selection_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_report_feedback_details
    ADD CONSTRAINT fk_epvrfd_pilot_validation_report_id FOREIGN KEY (fk_eqms_pilot_validation_report_id) REFERENCES dnd.eqms_pilot_validation_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_report_feedback_dir_mapper
    ADD CONSTRAINT fk_epvrfdm_execution_stage_deliverables_id FOREIGN KEY (fk_eqms_execution_stage_deliverables_id) REFERENCES dnd.eqms_execution_stage_deliverables(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_report_feedback_dir_mapper
    ADD CONSTRAINT fk_epvrfdm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_report_feedback_dir_mapper
    ADD CONSTRAINT fk_epvrfdm_pilot_validation_report_feedback_details_id FOREIGN KEY (fk_eqms_pilot_validation_report_feedback_details_id) REFERENCES dnd.eqms_pilot_validation_report_feedback_details(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_report_supporting_files
    ADD CONSTRAINT fk_epvrsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_report_supporting_files
    ADD CONSTRAINT fk_epvrsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_report_supporting_files
    ADD CONSTRAINT fk_epvrsf_pilot_validation_report_id FOREIGN KEY (fk_eqms_pilot_validation_report_id) REFERENCES dnd.eqms_pilot_validation_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_results
    ADD CONSTRAINT fk_epvr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_results
    ADD CONSTRAINT fk_epvr_pilot_validation_report_id FOREIGN KEY (fk_eqms_pilot_validation_report_id) REFERENCES dnd.eqms_pilot_validation_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

