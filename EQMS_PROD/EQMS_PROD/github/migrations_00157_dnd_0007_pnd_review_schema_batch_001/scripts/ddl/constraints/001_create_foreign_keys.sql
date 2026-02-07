ALTER TABLE ONLY dnd.eqms_pnd_review_report
    ADD CONSTRAINT fk_eprr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_review_report
    ADD CONSTRAINT fk_eprr_product_need_document_id FOREIGN KEY (fk_eqms_product_need_document_id) REFERENCES dnd.eqms_product_need_document(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_review_report_breakdown
    ADD CONSTRAINT fk_eprrb_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_review_report_breakdown
    ADD CONSTRAINT fk_eprrb_pnd_items_id FOREIGN KEY (fk_eqms_pnd_items_id) REFERENCES dnd.eqms_pnd_items(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_review_report_breakdown
    ADD CONSTRAINT fk_eprrb_pnd_review_report_id FOREIGN KEY (fk_eqms_pnd_review_report_id) REFERENCES dnd.eqms_pnd_review_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_review_report_conclusion
    ADD CONSTRAINT fk_eprrc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_review_report_conclusion
    ADD CONSTRAINT fk_eprrc_pnd_review_report_id FOREIGN KEY (fk_eqms_pnd_review_report_id) REFERENCES dnd.eqms_pnd_review_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_review_required_approval_details
    ADD CONSTRAINT fk_eqms_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_review_required_approval_details
    ADD CONSTRAINT fk_eqms_roles_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_roles_lk_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_review_required_approval_details
    ADD CONSTRAINT fk_eqms_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_review_required_approval_details
    ADD CONSTRAINT fk_eqms_pnd_review_report_id FOREIGN KEY (fk_eqms_pnd_review_report_id) REFERENCES dnd.eqms_pnd_review_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_specification_review
    ADD CONSTRAINT fk_epsr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_specification_review
    ADD CONSTRAINT fk_epsr_pnd_specification_id FOREIGN KEY (fk_eqms_pnd_specification_id) REFERENCES dnd.eqms_pnd_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pnd_specification_review
    ADD CONSTRAINT fk_epsr_pnd_review_report_id FOREIGN KEY (fk_eqms_pnd_review_report_id) REFERENCES dnd.eqms_pnd_review_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

