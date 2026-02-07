ALTER TABLE ONLY organization.eqms_part_purchase_type_lk
    ADD CONSTRAINT unique_epptl_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_part_purchase_type_lk
    ADD CONSTRAINT fk_epptl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

