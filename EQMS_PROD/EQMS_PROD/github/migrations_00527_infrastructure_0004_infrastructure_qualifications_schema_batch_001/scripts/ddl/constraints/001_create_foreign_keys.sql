ALTER TABLE ONLY infrastructure.eqms_infrastructure_qualification
    ADD CONSTRAINT fk_ei_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_qualification
    ADD CONSTRAINT fk_eiq_maintenance_service_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_maintenance_service_type_lk_id) REFERENCES organization.eqms_maintenance_service_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_qualification
    ADD CONSTRAINT fk_esf_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY infrastructure.eqms_infrastructure_qualification_checklist
    ADD CONSTRAINT fk_ei_infrastructure_id FOREIGN KEY (fk_eqms_infrastructure_id) REFERENCES infrastructure.eqms_infrastructure(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_qualification_checklist
    ADD CONSTRAINT fk_ei_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_qualification_checklist
    ADD CONSTRAINT fk_esf_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY infrastructure.eqms_infrastructure_qualification
    ADD CONSTRAINT fk_ei_infrastructure_qualification_checklist_id FOREIGN KEY (fk_eqms_infrastructure_qualification_checklist_id) REFERENCES infrastructure.eqms_infrastructure_qualification_checklist(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_qualification_checklist_items
    ADD CONSTRAINT fk_ei_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_qualification_checklist_items
    ADD CONSTRAINT fk_ei_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_qualification_checklist_items
    ADD CONSTRAINT fk_ei_infrastructure_qualification_checklist_id FOREIGN KEY (fk_eqms_infrastructure_qualification_checklist_id) REFERENCES infrastructure.eqms_infrastructure_qualification_checklist(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_qualification_test
    ADD CONSTRAINT fk_ei_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_qualification_test
    ADD CONSTRAINT fk_ei_verification_result_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_verification_result_lk_id) REFERENCES organization.eqms_verification_result_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_qualification_test
    ADD CONSTRAINT fk_ei_infrastructure_qualification_id FOREIGN KEY (fk_eqms_infrastructure_qualification_id) REFERENCES infrastructure.eqms_infrastructure_qualification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_qualification_test
    ADD CONSTRAINT fk_ei_infrastructure_qualification_checklist_items_id FOREIGN KEY (fk_eqms_infrastructure_qualification_checklist_items_id) REFERENCES infrastructure.eqms_infrastructure_qualification_checklist_items(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

