ALTER TABLE ONLY organization.eqms_dig_specification_usability_type_mapper
    ADD CONSTRAINT fk_edsutm_design_specification_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_design_specification_type_lk_id) REFERENCES organization.eqms_design_specification_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_dig_specification_usability_type_mapper
    ADD CONSTRAINT fk_edsutm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_dig_specification_usability_type_mapper
    ADD CONSTRAINT fk_edsutm_usability_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_usability_type_id) REFERENCES organization.eqms_usability_type(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

