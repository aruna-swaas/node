ALTER TABLE ONLY qc.eqms_action_planned_return_details
    ADD CONSTRAINT fk_eaprd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_action_planned_rework_details
    ADD CONSTRAINT fk_eaprw_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_action_planned_rework_details
    ADD CONSTRAINT fk_eaprw_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_action_planned_scrap_details
    ADD CONSTRAINT fk_eapsd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_equipment_calibration_details
    ADD CONSTRAINT fk_eecd_equipment_item_id FOREIGN KEY (fk_eqms_equipment_item_id) REFERENCES organization.eqms_equipment_item(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_equipment_calibration_details
    ADD CONSTRAINT fk_eecd_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_equipment_calibration_details
    ADD CONSTRAINT fk_eecd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_equipment_calibration_details
    ADD CONSTRAINT fk_eecd_part_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_lk_id) REFERENCES dnd.eqms_part_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_non_conformance_details
    ADD CONSTRAINT fk_encd_action_planned_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_action_planned_lk_id) REFERENCES organization.eqms_action_planned_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_non_conformance_details
    ADD CONSTRAINT fk_encd_insp_results_id FOREIGN KEY (fk_eqms_incoming_inspection_results_id) REFERENCES qc.eqms_incoming_inspection_results(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_non_conformance_details
    ADD CONSTRAINT fk_encd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_action_planned_return_details
    ADD CONSTRAINT fk_eaprd_ncd_id FOREIGN KEY (fk_eqms_non_conformance_details_id) REFERENCES qc.eqms_non_conformance_details(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_action_planned_rework_details
    ADD CONSTRAINT fk_eaprw_ncd_id FOREIGN KEY (fk_eqms_non_conformance_details_id) REFERENCES qc.eqms_non_conformance_details(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_action_planned_scrap_details
    ADD CONSTRAINT fk_eapsd_ncd_id FOREIGN KEY (fk_eqms_non_conformance_details_id) REFERENCES qc.eqms_non_conformance_details(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_non_conformance_details_supporting_files
    ADD CONSTRAINT fk_encdsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_non_conformance_details_supporting_files
    ADD CONSTRAINT fk_encdsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_non_conformance_details_supporting_files
    ADD CONSTRAINT fk_encdsf_ncd_id FOREIGN KEY (fk_eqms_non_conformance_details_id) REFERENCES qc.eqms_non_conformance_details(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

