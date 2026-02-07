ALTER TABLE ONLY organization.eqms_pre_prod_process_validation_type_lk
    ADD CONSTRAINT unique_eppvtl_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_pre_prod_process_validation_type_lk
    ADD CONSTRAINT fk_eppvtl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

