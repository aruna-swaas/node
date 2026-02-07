ALTER TABLE ONLY qc.eqms_incoming_insp_hardware_result_supporting_files
    ADD CONSTRAINT fk_eiihrsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_insp_hardware_result_supporting_files
    ADD CONSTRAINT fk_eiihrsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_insp_software_result_supporting_files
    ADD CONSTRAINT fk_eiisrsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_insp_software_result_supporting_files
    ADD CONSTRAINT fk_eiisrsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_insp_spec_batch_results
    ADD CONSTRAINT fk_eisbr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_insp_spec_batch_results
    ADD CONSTRAINT fk_eisbr_verification_result_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_verification_result_lk_id) REFERENCES organization.eqms_verification_result_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_insp_spec_unit_results
    ADD CONSTRAINT fk_eisur_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_insp_spec_unit_results
    ADD CONSTRAINT fk_eisur_verification_result_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_verification_result_lk_id) REFERENCES organization.eqms_verification_result_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_batch_results
    ADD CONSTRAINT fk_eibr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_batch_results
    ADD CONSTRAINT fk_eibr_verification_result_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_verification_result_lk_id) REFERENCES organization.eqms_verification_result_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_deviation_note
    ADD CONSTRAINT fk_eiidn_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_deviation_note
    ADD CONSTRAINT fk_eiidn_selection_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_selection_lk_id) REFERENCES organization.eqms_selection_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_hardware_result
    ADD CONSTRAINT fk_eiihr_failure_type_lk FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_failure_type_lk_id) REFERENCES organization.eqms_failure_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_hardware_result
    ADD CONSTRAINT fk_eiihr_hardware_test_procedure_spec_id FOREIGN KEY (fk_eqms_hardware_test_procedure_spec_id) REFERENCES qc.eqms_hardware_test_procedure_spec(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_hardware_result
    ADD CONSTRAINT fk_eiihr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_hardware_result
    ADD CONSTRAINT fk_eiihr_verification_result_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_verification_result_lk_id) REFERENCES organization.eqms_verification_result_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_part_details
    ADD CONSTRAINT fk_eiipd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_part_details
    ADD CONSTRAINT fk_eqms_goods_inward_detail_id FOREIGN KEY (fk_eqms_goods_inward_detail_id) REFERENCES qc.eqms_goods_inward_detail(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_hardware_result
    ADD CONSTRAINT fk_eiihr_incoming_inspection_part_details_id FOREIGN KEY (fk_eqms_incoming_inspection_part_details_id) REFERENCES qc.eqms_incoming_inspection_part_details(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_insp_hardware_result_supporting_files
    ADD CONSTRAINT fk_eiihrsf_hardware_result_id FOREIGN KEY (fk_eqms_incoming_inspection_hardware_result_id) REFERENCES qc.eqms_incoming_inspection_hardware_result(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_results
    ADD CONSTRAINT fk_eiir_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_results
    ADD CONSTRAINT fk_eiir_part_quantity_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_quantity_type_lk_id) REFERENCES organization.eqms_part_quantity_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_results
    ADD CONSTRAINT fk_eiir_verification_result_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_verification_result_lk_id) REFERENCES organization.eqms_verification_result_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_results
    ADD CONSTRAINT fk_eqms_equipment_item_id FOREIGN KEY (fk_eqms_equipment_item_id) REFERENCES organization.eqms_equipment_item(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_results
    ADD CONSTRAINT fk_eqms_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_results
    ADD CONSTRAINT fk_eiir_insp_part_details_id FOREIGN KEY (fk_eqms_incoming_inspection_part_details_id) REFERENCES qc.eqms_incoming_inspection_part_details(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_batch_results
    ADD CONSTRAINT fk_eibr_incoming_inspection_results_id FOREIGN KEY (fk_eqms_incoming_inspection_results_id) REFERENCES qc.eqms_incoming_inspection_results(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_insp_spec_batch_results
    ADD CONSTRAINT fk_eisbr_incoming_inspection_batch_results_id FOREIGN KEY (fk_eqms_incoming_inspection_batch_results_id) REFERENCES qc.eqms_incoming_inspection_batch_results(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_deviation_note
    ADD CONSTRAINT fk_eiidn_results_id FOREIGN KEY (fk_eqms_incoming_inspection_results_id) REFERENCES qc.eqms_incoming_inspection_results(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_results_supporting_files
    ADD CONSTRAINT fk_eiirsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_results_supporting_files
    ADD CONSTRAINT fk_eiirsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_results_supporting_files
    ADD CONSTRAINT fk_eiirsf_results_id FOREIGN KEY (fk_eqms_incoming_inspection_results_id) REFERENCES qc.eqms_incoming_inspection_results(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_software_result
    ADD CONSTRAINT fk_eiisr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_software_result
    ADD CONSTRAINT fk_eiisr_verification_result_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_verification_result_lk_id) REFERENCES organization.eqms_verification_result_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_software_result
    ADD CONSTRAINT fk_eiisr_incoming_inspection_part_details_id FOREIGN KEY (fk_eqms_incoming_inspection_part_details_id) REFERENCES qc.eqms_incoming_inspection_part_details(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_unit_results
    ADD CONSTRAINT fk_eiur_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_unit_results
    ADD CONSTRAINT fk_eiur_verification_result_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_verification_result_lk_id) REFERENCES organization.eqms_verification_result_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_unit_results
    ADD CONSTRAINT fk_eiur_incoming_inspection_results_id FOREIGN KEY (fk_eqms_incoming_inspection_results_id) REFERENCES qc.eqms_incoming_inspection_results(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_insp_spec_unit_results
    ADD CONSTRAINT fk_eisur_incoming_inspection_unit_results_id FOREIGN KEY (fk_eqms_incoming_inspection_unit_results_id) REFERENCES qc.eqms_incoming_inspection_unit_results(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_software_test_procedure_spec
    ADD CONSTRAINT fk_estps_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_software_test_procedure_spec
    ADD CONSTRAINT fk_estps_part_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_lk_id) REFERENCES dnd.eqms_part_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_inspection_software_result
    ADD CONSTRAINT fk_eiisr_software_test_procedure_spec_id FOREIGN KEY (fk_eqms_software_test_procedure_spec_id) REFERENCES qc.eqms_software_test_procedure_spec(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_insp_software_result_supporting_files
    ADD CONSTRAINT fk_eiisrsf_software_result_id FOREIGN KEY (fk_eqms_incoming_inspection_software_result_id) REFERENCES qc.eqms_incoming_inspection_software_result(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

