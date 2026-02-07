ALTER TABLE ONLY dnd.eqms_dig_specification
    ADD CONSTRAINT fk_eqms_rcm_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_rcm_type_lk_id) REFERENCES organization.eqms_rcm_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

