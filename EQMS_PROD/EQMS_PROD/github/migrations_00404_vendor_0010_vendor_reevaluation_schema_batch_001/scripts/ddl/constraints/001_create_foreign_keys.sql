ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_applicable_group
    ADD CONSTRAINT fk_evreag_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_applicable_group
    ADD CONSTRAINT fk_evreag_vendor_re_evaluation_criteria_id FOREIGN KEY (fk_eqms_vendor_re_evaluation_criteria_id) REFERENCES vendor.eqms_vendor_re_evaluation_criteria(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_applicable_group
    ADD CONSTRAINT fk_evreag_vendor_re_evaluation_group_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_vendor_re_evaluation_group_lk_id) REFERENCES organization.eqms_vendor_re_evaluation_group_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_group_remarks
    ADD CONSTRAINT fk_evregr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_group_remarks
    ADD CONSTRAINT fk_evregr_vendor_re_evaluation_id FOREIGN KEY (fk_eqms_vendor_re_evaluation_id) REFERENCES vendor.eqms_vendor_re_evaluation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_group_remarks
    ADD CONSTRAINT fk_evregr_vendor_re_evaluation_applicable_group_id FOREIGN KEY (fk_eqms_vendor_re_evaluation_applicable_group_id) REFERENCES vendor.eqms_vendor_re_evaluation_applicable_group(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_group_remarks_sup_files
    ADD CONSTRAINT fk_evregrsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_group_remarks_sup_files
    ADD CONSTRAINT fk_evregrsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_group_remarks_sup_files
    ADD CONSTRAINT fk_evregrsf_group_remarks_id FOREIGN KEY (fk_eqms_vendor_re_evaluation_group_remarks_id) REFERENCES vendor.eqms_vendor_re_evaluation_group_remarks(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_issues_responses
    ADD CONSTRAINT fk_evrir_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_issues_responses
    ADD CONSTRAINT fk_evrir_vendor_re_evaluation_id FOREIGN KEY (fk_eqms_vendor_re_evaluation_id) REFERENCES vendor.eqms_vendor_re_evaluation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_rating
    ADD CONSTRAINT fk_evrr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_rating
    ADD CONSTRAINT fk_evrr_performance_delivery_rating_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_performance_delivery_rating_id) REFERENCES organization.eqms_performance_rating_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_rating
    ADD CONSTRAINT fk_evrr_performance_quality_rating_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_performance_quality_rating_id) REFERENCES organization.eqms_performance_rating_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_rating
    ADD CONSTRAINT fk_evrr_performance_support_rating_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_performance_support_rating_id) REFERENCES organization.eqms_performance_rating_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_rating
    ADD CONSTRAINT fk_evrr_vendor_re_evaluation_id FOREIGN KEY (fk_eqms_vendor_re_evaluation_id) REFERENCES vendor.eqms_vendor_re_evaluation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_supporting_files
    ADD CONSTRAINT fk_evresf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_supporting_files
    ADD CONSTRAINT fk_evresf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_supporting_files
    ADD CONSTRAINT fk_evresf_vendor_re_evaluation_id FOREIGN KEY (fk_eqms_vendor_re_evaluation_id) REFERENCES vendor.eqms_vendor_re_evaluation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_visit
    ADD CONSTRAINT fk_evrv_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_vendor_re_evaluation_visit
    ADD CONSTRAINT fk_evrv_vendor_re_evaluation_id FOREIGN KEY (fk_eqms_vendor_re_evaluation_id) REFERENCES vendor.eqms_vendor_re_evaluation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

