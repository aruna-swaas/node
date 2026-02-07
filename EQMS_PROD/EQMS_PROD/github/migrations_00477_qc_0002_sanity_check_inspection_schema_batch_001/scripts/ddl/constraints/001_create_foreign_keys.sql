ALTER TABLE ONLY qc.eqms_sanity_check_inspection
    ADD CONSTRAINT fk_esci_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_sanity_check_inspection
    ADD CONSTRAINT fk_esci_purchase_order_part_detail_id FOREIGN KEY (fk_eqms_purchase_order_part_detail_id) REFERENCES purchase.eqms_purchase_order_part_detail(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_sanity_check_inspection_spec_results
    ADD CONSTRAINT fk_escisr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_sanity_check_inspection_spec_results
    ADD CONSTRAINT fk_escisr_sanity_spec_checklist_detail_id FOREIGN KEY (fk_eqms_sanity_spec_checklist_detail_id) REFERENCES qc.eqms_sanity_spec_checklist_detail(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_sanity_check_inspection_spec_results
    ADD CONSTRAINT fk_escisr_verification_result_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_verification_result_lk_id) REFERENCES organization.eqms_verification_result_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_sanity_check_inspection_spec_results
    ADD CONSTRAINT fk_escisr_sanity_check_inspection_id FOREIGN KEY (fk_eqms_sanity_check_inspection_id) REFERENCES qc.eqms_sanity_check_inspection(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_sanity_check_inspection_supporting_files
    ADD CONSTRAINT fk_escisf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_sanity_check_inspection_supporting_files
    ADD CONSTRAINT fk_escisf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_sanity_check_inspection_supporting_files
    ADD CONSTRAINT fk_escisf_sanity_check_inspection_id FOREIGN KEY (fk_eqms_sanity_check_inspection_id) REFERENCES qc.eqms_sanity_check_inspection(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

