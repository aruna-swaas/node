ALTER TABLE ONLY organization.eqms_pre_prod_product_process_checklist_group_lk
    ADD CONSTRAINT unique_epppcgl_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_pre_prod_product_process_checklist_group_lk
    ADD CONSTRAINT fk_epppcgl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

