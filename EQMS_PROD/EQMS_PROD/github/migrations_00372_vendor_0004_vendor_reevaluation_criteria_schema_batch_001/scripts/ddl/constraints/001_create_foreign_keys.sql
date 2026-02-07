ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_criteria
    ADD CONSTRAINT fk_evrec_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_criteria
    ADD CONSTRAINT fk_evrec_part_category_id FOREIGN KEY (fk_eqms_part_category_id) REFERENCES vendor.eqms_part_category(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_criteria
    ADD CONSTRAINT fk_evrec_part_category_subclass_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_category_subclass_lk_id) REFERENCES organization.eqms_part_category_subclass_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_criteria
    ADD CONSTRAINT fk_evrec_part_category_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_category_type_lk_id) REFERENCES organization.eqms_part_category_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_criteria
    ADD CONSTRAINT fk_evrec_part_subcategory_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_subcategory_type_lk_id) REFERENCES organization.eqms_part_subcategory_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_criteria
    ADD CONSTRAINT fk_evrec_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_criteria_supporting_files
    ADD CONSTRAINT fk_evrecsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_criteria_supporting_files
    ADD CONSTRAINT fk_evrecsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_criteria_supporting_files
    ADD CONSTRAINT fk_evrecsf_vendor_re_evaluation_criteria_id FOREIGN KEY (fk_eqms_vendor_re_evaluation_criteria_id) REFERENCES vendor.eqms_vendor_re_evaluation_criteria(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_group_criteria_mapper
    ADD CONSTRAINT fk_evregcm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_group_criteria_mapper
    ADD CONSTRAINT fk_evregcm_requirement_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_requirement_lk_id) REFERENCES organization.eqms_requirement_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_group_criteria_mapper
    ADD CONSTRAINT fk_evregcm_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_group_criteria_mapper
    ADD CONSTRAINT fk_evregcm_vendor_re_evaluation_group_criteria_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_vendor_re_evaluation_group_criteria_lk_id) REFERENCES organization.eqms_vendor_re_evaluation_group_criteria_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

