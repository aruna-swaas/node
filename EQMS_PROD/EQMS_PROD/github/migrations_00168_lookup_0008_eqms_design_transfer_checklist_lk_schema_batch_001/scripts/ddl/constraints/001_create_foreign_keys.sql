ALTER TABLE ONLY organization.eqms_design_transfer_checklist_lk
    ADD CONSTRAINT eqms_design_transfer_checklist_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_design_transfer_checklist_lk
    ADD CONSTRAINT fk_edtcl_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_design_transfer_checklist_lk
    ADD CONSTRAINT fk_edtcl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_design_transfer_checklist_lk
    ADD CONSTRAINT fk_eqms_record_generation_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_record_generation_type_lk_id) REFERENCES dms.eqms_record_generation_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

