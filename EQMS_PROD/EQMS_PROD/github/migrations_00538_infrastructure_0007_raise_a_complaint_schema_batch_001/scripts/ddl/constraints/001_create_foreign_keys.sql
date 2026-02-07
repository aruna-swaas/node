ALTER TABLE ONLY infrastructure.eqms_infrastructure_complaint
    ADD CONSTRAINT fk_ei_infrastructure_id FOREIGN KEY (fk_eqms_infrastructure_id) REFERENCES infrastructure.eqms_infrastructure(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_complaint
    ADD CONSTRAINT fk_ei_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_complaint
    ADD CONSTRAINT fk_ei_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_complaint_supporting_files
    ADD CONSTRAINT fk_ei_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_complaint_supporting_files
    ADD CONSTRAINT fk_ei_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_complaint_supporting_files
    ADD CONSTRAINT fk_ei_infrastructure_complaint_id FOREIGN KEY (fk_eqms_infrastructure_complaint_id) REFERENCES infrastructure.eqms_infrastructure_complaint(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

