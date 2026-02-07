ALTER TABLE ONLY dnd.eqms_pnd_buyer_chosen_requirements
    ADD CONSTRAINT fk_epbcr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_buyer_chosen_requirements
    ADD CONSTRAINT fk_epro_pnd_buyer_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_pnd_buyer_lk_id) REFERENCES organization.eqms_pnd_buyer_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_end_user_chosen_requirements
    ADD CONSTRAINT fk_epeucr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_end_user_chosen_requirements
    ADD CONSTRAINT fk_epeucr_target_audience_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_target_audience_type_lk_id) REFERENCES organization.eqms_target_audience_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_items
    ADD CONSTRAINT fk_epi_pnd_item_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_pnd_item_lk_id) REFERENCES organization.eqms_pnd_item_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_items
    ADD CONSTRAINT fk_ept_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_requirement
    ADD CONSTRAINT fk_epr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_requirement
    ADD CONSTRAINT fk_eqms_pnd_item_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_pnd_item_lk_id) REFERENCES organization.eqms_pnd_item_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_specification
    ADD CONSTRAINT fk_eqms_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_supporting_documents
    ADD CONSTRAINT fk_epsd_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id);

ALTER TABLE ONLY dnd.eqms_pnd_supporting_documents
    ADD CONSTRAINT fk_eqms_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_text_requirements
    ADD CONSTRAINT fk_eptr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_product_need_document
    ADD CONSTRAINT fk_eqms_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_product_need_document
    ADD CONSTRAINT fk_eqms_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_items
    ADD CONSTRAINT fk_epi_product_need_document_id FOREIGN KEY (fk_eqms_product_need_document_id) REFERENCES dnd.eqms_product_need_document(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_buyer_chosen_requirements
    ADD CONSTRAINT fk_epro_pnd_item_id FOREIGN KEY (fk_eqms_pnd_item_id) REFERENCES dnd.eqms_pnd_items(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_end_user_chosen_requirements
    ADD CONSTRAINT fk_epeucr_pnd_item_id FOREIGN KEY (fk_eqms_pnd_item_id) REFERENCES dnd.eqms_pnd_items(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_requirement
    ADD CONSTRAINT fk_eqms_product_need_document_id FOREIGN KEY (fk_eqms_product_need_document_id) REFERENCES dnd.eqms_product_need_document(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_specification
    ADD CONSTRAINT fk_eqms_product_need_document_id FOREIGN KEY (fk_eqms_product_need_document_id) REFERENCES dnd.eqms_product_need_document(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_supporting_documents
    ADD CONSTRAINT fk_eqms_product_need_document_id FOREIGN KEY (fk_eqms_product_need_document_id) REFERENCES dnd.eqms_product_need_document(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_text_requirements
    ADD CONSTRAINT fk_eptr_pnd_item_id FOREIGN KEY (fk_eqms_pnd_item_id) REFERENCES dnd.eqms_pnd_items(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_product_need_document_review_report
    ADD CONSTRAINT fk_epndrr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_product_need_document_review_report
    ADD CONSTRAINT fk_eqms_product_need_document_id FOREIGN KEY (fk_eqms_product_need_document_id) REFERENCES dnd.eqms_product_need_document(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_product_need_document_review_report_conclusion
    ADD CONSTRAINT fk_epndrrc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_product_need_document_review_report_conclusion
    ADD CONSTRAINT fk_eqms_product_need_document_review_report_id FOREIGN KEY (fk_eqms_product_need_document_review_report_id) REFERENCES dnd.eqms_product_need_document_review_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_product_variants
    ADD CONSTRAINT fk_eppv_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_product_variants
    ADD CONSTRAINT fk_eppv_product_variants_id FOREIGN KEY (fk_eqms_product_variants_id) REFERENCES organization.eqms_product_variants(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_product_variants
    ADD CONSTRAINT fk_eppv_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

