ALTER TABLE ONLY dms.eqms_document_template
    ADD CONSTRAINT eqms_document_template_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY dms.eqms_document_template_type_lk
    ADD CONSTRAINT eqms_document_template_type_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY dms.eqms_document_template_variable
    ADD CONSTRAINT eqms_document_template_variable_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY dms.eqms_document_type_lk
    ADD CONSTRAINT eqms_document_type_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY dms.eqms_document_variable_operation
    ADD CONSTRAINT eqms_document_variable_operation_ten_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY dms.eqms_file_category_lk
    ADD CONSTRAINT eqms_file_category_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY dms.eqms_file_type_lk
    ADD CONSTRAINT eqms_file_type_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY dms.eqms_generic_details
    ADD CONSTRAINT eqms_generic_details_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY dms.eqms_record_generation_type_lk
    ADD CONSTRAINT eqms_record_generation_type_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY dms.eqms_record_type_lk
    ADD CONSTRAINT eqms_record_type_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY dms.eqms_record_generation_mode_lk
    ADD CONSTRAINT uk_ergml_tenant_org_ref UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY dms.eqms_tags
    ADD CONSTRAINT unique_tnt_org_tag_name UNIQUE (eqms_tenant_key, fk_eqms_organization_id, tag_name);

ALTER TABLE ONLY dms.eqms_component_record
    ADD CONSTRAINT fk_epr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_compressed_files
    ADD CONSTRAINT fk_ecf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document
    ADD CONSTRAINT fk_ed_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_sections
    ADD CONSTRAINT fk_eds_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_template
    ADD CONSTRAINT fk_edt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_template_form_mapping
    ADD CONSTRAINT fk_edtfm_form_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id) REFERENCES abac.eqms_form(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_template_form_mapping
    ADD CONSTRAINT fk_edtfm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_template_magic_read_details
    ADD CONSTRAINT fk_edtmrd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_template_type_lk
    ADD CONSTRAINT fk_edttl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_template
    ADD CONSTRAINT fk_edt_document_template_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id) REFERENCES dms.eqms_document_template_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_template_variable
    ADD CONSTRAINT fk_ev_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_template_variable_transformation_rules
    ADD CONSTRAINT fk_edtvtr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_type_lk
    ADD CONSTRAINT fk_edtl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document
    ADD CONSTRAINT fk_eqms_document_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_type_lk_id) REFERENCES dms.eqms_document_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_variable_mapper
    ADD CONSTRAINT fk_edvm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_variable_operation
    ADD CONSTRAINT fk_edvo_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_template_variable_transformation_rules
    ADD CONSTRAINT fk_edtvtr_document_variable_operation_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_variable_operation_id) REFERENCES dms.eqms_document_variable_operation(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_variables
    ADD CONSTRAINT fk_edv_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_variables
    ADD CONSTRAINT fk_edv_variable_value_image_id FOREIGN KEY (fk_variable_value_image_id) REFERENCES organization.eqms_image(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_file
    ADD CONSTRAINT fk_ef_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_file
    ADD CONSTRAINT fk_uploaded_eqms_user_id FOREIGN KEY (fk_uploaded_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_file_category_lk
    ADD CONSTRAINT fk_efcl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_file
    ADD CONSTRAINT fk_ef_file_category_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_file_category_lk_id) REFERENCES dms.eqms_file_category_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_file_tags
    ADD CONSTRAINT fk_eft_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_file_type_lk
    ADD CONSTRAINT fk_emtl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_file
    ADD CONSTRAINT fk_ef_file_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_file_type_lk_id) REFERENCES dms.eqms_file_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_compressed_files
    ADD CONSTRAINT fk_ecf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document
    ADD CONSTRAINT fk_ed_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_file_tags
    ADD CONSTRAINT fk_eft_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_generic_details
    ADD CONSTRAINT fk_egd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record
    ADD CONSTRAINT fk_ed_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record
    ADD CONSTRAINT fk_eqms_file_history_id FOREIGN KEY (fk_eqms_file_history_id) REFERENCES dms.eqms_file_history(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record_generation_mode_lk
    ADD CONSTRAINT fk_ergml_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_template
    ADD CONSTRAINT fk_edt_record_generation_mode_lk FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_record_generation_mode_lk_id) REFERENCES dms.eqms_record_generation_mode_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_template_form_mapping
    ADD CONSTRAINT fk_edtfm_document_template_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id) REFERENCES dms.eqms_document_template(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_template_history
    ADD CONSTRAINT fk_edth_document_template_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id) REFERENCES dms.eqms_document_template(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_template_magic_read_details
    ADD CONSTRAINT fk_edtmrd_document_template_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id) REFERENCES dms.eqms_document_template(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_template_variable
    ADD CONSTRAINT fk_edtv_document_template_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id) REFERENCES dms.eqms_document_template(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_template_variable_transformation_rules
    ADD CONSTRAINT fk_edtvtr_document_template_variable_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id) REFERENCES dms.eqms_document_template_variable(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_variable_mapper
    ADD CONSTRAINT fk_edvm_document_template_variable_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id) REFERENCES dms.eqms_document_template_variable(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record
    ADD CONSTRAINT fk_er_document_template_history_id FOREIGN KEY (fk_eqms_document_template_history_id) REFERENCES dms.eqms_document_template_history(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record_generation_type_lk
    ADD CONSTRAINT fk_ergl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record
    ADD CONSTRAINT fk_er_record_generation_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_record_generation_type_lk_id) REFERENCES dms.eqms_record_generation_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record_generic_details
    ADD CONSTRAINT fk_edgd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record_generic_details
    ADD CONSTRAINT fk_ergd_record_history_id FOREIGN KEY (fk_eqms_record_history_id) REFERENCES dms.eqms_record_history(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record_generic_details
    ADD CONSTRAINT fk_edgd_generic_details_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_generic_details_id) REFERENCES dms.eqms_generic_details(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record_type_lk
    ADD CONSTRAINT fk_ertl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record
    ADD CONSTRAINT fk_eqms_record_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_record_type_lk_id) REFERENCES dms.eqms_record_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_component_record
    ADD CONSTRAINT fk_epr_record_id FOREIGN KEY (fk_eqms_record_id) REFERENCES dms.eqms_record(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_sections
    ADD CONSTRAINT fk_eqms_document_id FOREIGN KEY (fk_eqms_document_id) REFERENCES dms.eqms_record(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_document_variables
    ADD CONSTRAINT fk_eqms_document_sections_id FOREIGN KEY (fk_eqms_document_sections_id) REFERENCES dms.eqms_document_sections(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record_variable_mapper
    ADD CONSTRAINT fk_edvm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record_variables
    ADD CONSTRAINT fk_erv_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record_variables
    ADD CONSTRAINT fk_erv_record_id FOREIGN KEY (fk_eqms_record_id) REFERENCES dms.eqms_record(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record_variable_mapper
    ADD CONSTRAINT fk_erad_record_variables_id FOREIGN KEY (fk_eqms_record_variables_id) REFERENCES dms.eqms_record_variables(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record_verification
    ADD CONSTRAINT fk_edv_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record_verification
    ADD CONSTRAINT fk_edv_verification_user_id FOREIGN KEY (fk_eqms_verification_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record_verification
    ADD CONSTRAINT fk_eqms_record_history_id FOREIGN KEY (fk_eqms_record_history_id) REFERENCES dms.eqms_record_history(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record_verification
    ADD CONSTRAINT fk_erv_verification_esign_image_id FOREIGN KEY (fk_eqms_verification_esign_image_id) REFERENCES organization.eqms_image(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record_verification_comments
    ADD CONSTRAINT fk_ervc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_record_verification_comments
    ADD CONSTRAINT fk_ervc_record_verification_id FOREIGN KEY (fk_eqms_record_verification_id) REFERENCES dms.eqms_record_verification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_tags
    ADD CONSTRAINT fk_et_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_file_tags
    ADD CONSTRAINT fk_emt_tag_id FOREIGN KEY (fk_eqms_tag_id) REFERENCES dms.eqms_tags(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_video
    ADD CONSTRAINT fk_ev_image_id FOREIGN KEY (fk_thumbnail_eqms_image_id) REFERENCES organization.eqms_image(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_video
    ADD CONSTRAINT fk_ev_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dms.eqms_video
    ADD CONSTRAINT fk_ev_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

