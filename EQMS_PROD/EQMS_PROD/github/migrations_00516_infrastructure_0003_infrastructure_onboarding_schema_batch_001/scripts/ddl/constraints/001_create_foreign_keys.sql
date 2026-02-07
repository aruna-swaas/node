ALTER TABLE ONLY infrastructure.eqms_infrastructure_doc_supporting_files
    ADD CONSTRAINT fk_ei_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_doc_supporting_files
    ADD CONSTRAINT fk_ei_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_image_supporting_files
    ADD CONSTRAINT fk_ei_image_id FOREIGN KEY (fk_eqms_image_id) REFERENCES organization.eqms_image(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_image_supporting_files
    ADD CONSTRAINT fk_ei_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_installation_report
    ADD CONSTRAINT fk_ei_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_installation_report
    ADD CONSTRAINT fk_esf_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

