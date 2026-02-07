ALTER TABLE ONLY organization.eqms_design_transfer_checklist_template_mapper_lk
    ADD CONSTRAINT fk_edtctml_design_transfer_checklist_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_design_transfer_checklist_lk_id) REFERENCES organization.eqms_design_transfer_checklist_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_design_transfer_checklist_template_mapper_lk
    ADD CONSTRAINT fk_edtctml_document_template_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id) REFERENCES dms.eqms_document_template(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_design_transfer_checklist_template_mapper_lk
    ADD CONSTRAINT fk_edtctml_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

