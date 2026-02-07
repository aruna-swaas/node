ALTER TABLE ONLY dnd.eqms_dig_specification
    ADD CONSTRAINT fk_edue_use_environment_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_use_environment_lk_id) REFERENCES organization.eqms_use_environment_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

