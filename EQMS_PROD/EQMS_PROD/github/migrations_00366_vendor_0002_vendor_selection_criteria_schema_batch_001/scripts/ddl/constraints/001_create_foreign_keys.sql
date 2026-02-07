ALTER TABLE ONLY vendor.eqms_vendor_group_criteria_mapper
    ADD CONSTRAINT fk_eqms_vendor_selection_group_criteria_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_vendor_selection_group_criteria_lk_id) REFERENCES organization.eqms_vendor_selection_group_criteria_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_group_criteria_mapper
    ADD CONSTRAINT fk_evgcm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_vendor_group_criteria_mapper
    ADD CONSTRAINT fk_evgcm_requirement_lk FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_requirement_lk_id) REFERENCES organization.eqms_requirement_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY vendor.eqms_vendor_selection_applicable_group
    ADD CONSTRAINT fk_evsag_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_selection_applicable_group
    ADD CONSTRAINT fk_evsag_vendor_selection_group_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_vendor_selection_group_lk_id) REFERENCES organization.eqms_vendor_selection_group_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_selection_criteria
    ADD CONSTRAINT fk_evsc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_vendor_selection_criteria
    ADD CONSTRAINT fk_evsc_part_category_id FOREIGN KEY (fk_eqms_part_category_id) REFERENCES vendor.eqms_part_category(id);

ALTER TABLE ONLY vendor.eqms_vendor_selection_criteria
    ADD CONSTRAINT fk_evsc_part_category_subclass_lk FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_category_subclass_lk_id) REFERENCES organization.eqms_part_category_subclass_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY vendor.eqms_vendor_selection_criteria
    ADD CONSTRAINT fk_evsc_part_category_type_lk FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_category_type_lk_id) REFERENCES organization.eqms_part_category_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY vendor.eqms_vendor_selection_criteria
    ADD CONSTRAINT fk_evsc_part_subcategory_type_lk FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_subcategory_type_lk_id) REFERENCES organization.eqms_part_subcategory_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY vendor.eqms_vendor_selection_criteria
    ADD CONSTRAINT fk_evsc_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_selection_applicable_group
    ADD CONSTRAINT fk_evsag_vendor_selection_criteria_id FOREIGN KEY (fk_eqms_vendor_selection_criteria_id) REFERENCES vendor.eqms_vendor_selection_criteria(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_group_criteria_mapper
    ADD CONSTRAINT fk_evgcm_vendor_selection_applicable_group_id FOREIGN KEY (fk_eqms_vendor_selection_applicable_group_id) REFERENCES vendor.eqms_vendor_selection_applicable_group(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_selection_criteria_evaluation
    ADD CONSTRAINT fk_evsce_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_selection_criteria_evaluation
    ADD CONSTRAINT fk_evsce_vendor_group_criteria_mapper_id FOREIGN KEY (fk_eqms_vendor_group_criteria_mapper_id) REFERENCES vendor.eqms_vendor_group_criteria_mapper(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_selection_criteria_re_evaluation
    ADD CONSTRAINT fk_evrgcr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_selection_criteria_supporting_files
    ADD CONSTRAINT fk_evscsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id);

ALTER TABLE ONLY vendor.eqms_vendor_selection_criteria_supporting_files
    ADD CONSTRAINT fk_evscsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_vendor_selection_criteria_supporting_files
    ADD CONSTRAINT fk_evscsf_vendor_selection_criteria_id FOREIGN KEY (fk_eqms_vendor_selection_criteria_id) REFERENCES vendor.eqms_vendor_selection_criteria(id);

