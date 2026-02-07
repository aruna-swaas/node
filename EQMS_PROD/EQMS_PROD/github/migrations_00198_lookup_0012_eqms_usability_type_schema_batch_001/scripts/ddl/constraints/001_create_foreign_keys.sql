ALTER TABLE ONLY organization.eqms_usability_type
    ADD CONSTRAINT eqms_usability_type_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_usability_type
    ADD CONSTRAINT fk_eut_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

