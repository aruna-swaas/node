ALTER TABLE ONLY vendor.eqms_sample_inspection_procedure_files
    ADD CONSTRAINT fk_esipf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_sample_inspection_procedure_files
    ADD CONSTRAINT fk_esipf_sample_order_inspection_supporting_files_id FOREIGN KEY (fk_eqms_sample_order_inspection_supporting_files_id) REFERENCES vendor.eqms_sample_order_inspection_supporting_files(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_sample_order_insp_spec_results
    ADD CONSTRAINT fk_esoisr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_sample_order_insp_spec_results
    ADD CONSTRAINT fk_esoisr_verification_result_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_verification_result_lk_id) REFERENCES organization.eqms_verification_result_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY vendor.eqms_sample_order_insp_spec_supporting_files
    ADD CONSTRAINT fk_esosf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_sample_order_insp_spec_supporting_files
    ADD CONSTRAINT fk_esosf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_sample_order_inspection
    ADD CONSTRAINT fk_esoi_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_sample_order_inspection
    ADD CONSTRAINT fk_esoi_sample_orders_id FOREIGN KEY (fk_eqms_sample_orders_id) REFERENCES vendor.eqms_sample_orders(id);

ALTER TABLE ONLY vendor.eqms_sample_order_inspection
    ADD CONSTRAINT fk_esoins_verification_result_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_verification_result_lk_id) REFERENCES organization.eqms_verification_result_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_sample_order_inspection_specification
    ADD CONSTRAINT fk_esois_criteria_id FOREIGN KEY (fk_eqms_sample_order_inspection_criteria_id) REFERENCES vendor.eqms_sample_order_inspection_criteria(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_sample_order_inspection_specification
    ADD CONSTRAINT fk_esois_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_sample_order_inspection_specification
    ADD CONSTRAINT fk_esois_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_sample_order_insp_spec_results
    ADD CONSTRAINT fk_esoisr_sample_order_inspection_specification_id FOREIGN KEY (fk_eqms_sample_order_inspection_specification_id) REFERENCES vendor.eqms_sample_order_inspection_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_sample_order_insp_spec_supporting_files
    ADD CONSTRAINT fk_esosf_specification_id FOREIGN KEY (fk_eqms_sample_order_inspection_specification_id) REFERENCES vendor.eqms_sample_order_inspection_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_sample_order_inspection
    ADD CONSTRAINT fk_esoi_sample_inspection_procedure_files_id FOREIGN KEY (fk_eqms_sample_inspection_procedure_files_id) REFERENCES vendor.eqms_sample_inspection_procedure_files(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_sample_inspection_procedure_files
    ADD CONSTRAINT fk_esipf_sample_order_inspection_id FOREIGN KEY (fk_eqms_sample_order_inspection_id) REFERENCES vendor.eqms_sample_order_inspection(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

