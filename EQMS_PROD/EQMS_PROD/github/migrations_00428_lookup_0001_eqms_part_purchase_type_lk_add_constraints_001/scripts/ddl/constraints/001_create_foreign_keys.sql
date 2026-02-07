ALTER TABLE ONLY dnd.eqms_bom_assembly_part_details
    ADD CONSTRAINT fk_ebapd_part_purchase_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_purchase_type_lk_id) REFERENCES organization.eqms_part_purchase_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

