ALTER TABLE ONLY organization.eqms_object_project_instance
    ADD CONSTRAINT fk_eopi_object_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_object_id) REFERENCES abac.eqms_object(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_menu_object
    ADD CONSTRAINT fk_emo_object_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_object_id) REFERENCES abac.eqms_object(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

