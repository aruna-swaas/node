ALTER TABLE ONLY vendor.eqms_vendor_evaluation
    ADD CONSTRAINT fk_evscr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_vendor_evaluation
    ADD CONSTRAINT fk_evscr_vendor_part_category_mapper_id FOREIGN KEY (fk_eqms_vendor_part_category_mapper_id) REFERENCES vendor.eqms_vendor_part_category_mapper(id);

ALTER TABLE ONLY vendor.eqms_vendor_evaluation_group_remarks
    ADD CONSTRAINT fk_evegr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_evaluation_group_remarks
    ADD CONSTRAINT fk_evegr_vendor_selection_applicable_group_id FOREIGN KEY (fk_eqms_vendor_selection_applicable_group_id) REFERENCES vendor.eqms_vendor_selection_applicable_group(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_evaluation_group_remarks
    ADD CONSTRAINT fk_evegr_vendor_evaluation_id FOREIGN KEY (fk_eqms_vendor_evaluation_id) REFERENCES vendor.eqms_vendor_evaluation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_evaluation_group_remarks_supporting_files
    ADD CONSTRAINT fk_evegrsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_evaluation_group_remarks_supporting_files
    ADD CONSTRAINT fk_evegrsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_evaluation_group_remarks_supporting_files
    ADD CONSTRAINT fk_evegrsf_vendor_evaluation_group_remarks_id FOREIGN KEY (fk_eqms_vendor_evaluation_group_remarks_id) REFERENCES vendor.eqms_vendor_evaluation_group_remarks(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_evaluation_supporting_files
    ADD CONSTRAINT fk_evscrsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id);

ALTER TABLE ONLY vendor.eqms_vendor_evaluation_supporting_files
    ADD CONSTRAINT fk_evscrsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_vendor_evaluation_supporting_files
    ADD CONSTRAINT fk_evesf_vendor_evaluation_id FOREIGN KEY (fk_eqms_vendor_evaluation_id) REFERENCES vendor.eqms_vendor_evaluation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_evaluation_visit
    ADD CONSTRAINT fk_evv_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_vendor_evaluation_visit
    ADD CONSTRAINT fk_evev_vendor_evaluation_id FOREIGN KEY (fk_eqms_vendor_evaluation_id) REFERENCES vendor.eqms_vendor_evaluation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

