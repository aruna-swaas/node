ALTER TABLE ONLY organization.eqms_dnd_document_lk
    ADD CONSTRAINT eqms_dnd_document_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_dnd_document_lk
    ADD CONSTRAINT fk_eddl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_dnd_document_lk
    ADD CONSTRAINT fk_er_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

