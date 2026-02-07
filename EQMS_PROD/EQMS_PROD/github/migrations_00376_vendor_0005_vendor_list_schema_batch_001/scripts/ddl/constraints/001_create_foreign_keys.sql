ALTER TABLE ONLY vendor.eqms_vendor_part_category_mapper
    ADD CONSTRAINT fk_evpcm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_vendor_part_category_mapper
    ADD CONSTRAINT fk_evpcm_part_category_id FOREIGN KEY (fk_eqms_part_category_id) REFERENCES vendor.eqms_part_category(id);

ALTER TABLE ONLY vendor.eqms_vendor_part_category_other_details
    ADD CONSTRAINT fk_evpcod_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_part_category_selection_criteria
    ADD CONSTRAINT fk_evpcc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_vendor_part_category_selection_criteria
    ADD CONSTRAINT fk_evpcc_vendor_selection_criteria_id FOREIGN KEY (fk_eqms_vendor_selection_criteria_id) REFERENCES vendor.eqms_vendor_selection_criteria(id);

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation
    ADD CONSTRAINT fk_evre_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation
    ADD CONSTRAINT fk_evscr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation
    ADD CONSTRAINT fk_evscr_vendor_group_criteria_mapper_id FOREIGN KEY (fk_eqms_vendor_group_criteria_mapper_id) REFERENCES vendor.eqms_vendor_group_criteria_mapper(id);

ALTER TABLE ONLY vendor.eqms_vendor_reference_supporting_files
    ADD CONSTRAINT fk_evrsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id);

ALTER TABLE ONLY vendor.eqms_vendor_reference_supporting_files
    ADD CONSTRAINT fk_evrsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_vendors
    ADD CONSTRAINT fk_ev_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_vendors
    ADD CONSTRAINT fk_ev_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY vendor.eqms_vendors
    ADD CONSTRAINT fk_ev_vendor_re_evaluation_frequency_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_vendor_re_evaluation_frequency_lk_id) REFERENCES organization.eqms_vendor_re_evaluation_frequency_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendors
    ADD CONSTRAINT fk_ev_vendor_type_lk FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_vendor_type_lk_id) REFERENCES organization.eqms_vendor_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY vendor.eqms_vendor_part_category_mapper
    ADD CONSTRAINT fk_evpcm_vendor_id FOREIGN KEY (fk_eqms_vendor_id) REFERENCES vendor.eqms_vendors(id);

ALTER TABLE ONLY vendor.eqms_vendor_part_category_other_details
    ADD CONSTRAINT fk_evpcod_vendor_part_category_mapper_id FOREIGN KEY (fk_eqms_vendor_part_category_mapper_id) REFERENCES vendor.eqms_vendor_part_category_mapper(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_part_category_selection_criteria
    ADD CONSTRAINT fk_evpcc_vendor_part_category_mapper_id FOREIGN KEY (fk_eqms_vendor_part_category_mapper_id) REFERENCES vendor.eqms_vendor_part_category_mapper(id);

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation
    ADD CONSTRAINT fk_evscr_vendor_part_category_mapper_id FOREIGN KEY (fk_eqms_vendor_part_category_mapper_id) REFERENCES vendor.eqms_vendor_part_category_mapper(id);

ALTER TABLE ONLY vendor.eqms_vendor_reference_supporting_files
    ADD CONSTRAINT fk_evrsf_vendor_id FOREIGN KEY (fk_eqms_vendor_id) REFERENCES vendor.eqms_vendors(id);

