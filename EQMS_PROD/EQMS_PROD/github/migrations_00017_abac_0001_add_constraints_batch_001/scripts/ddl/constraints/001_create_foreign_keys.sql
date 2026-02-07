ALTER TABLE ONLY workflow.eqms_form_task_group_mapping
    ADD CONSTRAINT fk_efawsm_form_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id) REFERENCES abac.eqms_form(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_form_type_task_group_mapping
    ADD CONSTRAINT fk_efttgm_form_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id) REFERENCES abac.eqms_form(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_form_drafts
    ADD CONSTRAINT fk_efd_form_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id) REFERENCES abac.eqms_form(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

