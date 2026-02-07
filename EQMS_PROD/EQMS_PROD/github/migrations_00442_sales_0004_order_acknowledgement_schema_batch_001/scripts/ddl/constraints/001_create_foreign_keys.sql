ALTER TABLE ONLY sales.eqms_order_acknowledgement
    ADD CONSTRAINT fk_eoa_order_approval_mode_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_order_approval_mode_lk_id) REFERENCES organization.eqms_order_approval_mode_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY sales.eqms_order_acknowledgement
    ADD CONSTRAINT fk_eoa_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY sales.eqms_order_acknowledgement
    ADD CONSTRAINT fk_esf_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY sales.eqms_order_acknowledgement_supporting_files
    ADD CONSTRAINT fk_eoasf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY sales.eqms_order_acknowledgement_supporting_files
    ADD CONSTRAINT fk_eqms_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY sales.eqms_order_acknowledgement_supporting_files
    ADD CONSTRAINT fk_eoasf_order_acknowledgement_id FOREIGN KEY (fk_eqms_order_acknowledgement_id) REFERENCES sales.eqms_order_acknowledgement(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

