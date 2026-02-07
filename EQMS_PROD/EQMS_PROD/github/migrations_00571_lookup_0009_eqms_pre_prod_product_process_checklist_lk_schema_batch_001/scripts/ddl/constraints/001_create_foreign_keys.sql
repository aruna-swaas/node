ALTER TABLE ONLY organization.eqms_pre_prod_product_process_checklist_lk
    ADD CONSTRAINT unique_epppcl_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_pre_prod_product_process_checklist_lk
    ADD CONSTRAINT fk_epppcl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

