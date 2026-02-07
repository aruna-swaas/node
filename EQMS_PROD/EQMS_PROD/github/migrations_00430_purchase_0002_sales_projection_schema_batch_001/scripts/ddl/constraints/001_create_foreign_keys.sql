ALTER TABLE ONLY purchase.eqms_inventory_stock
    ADD CONSTRAINT fk_eis_inventory_location_id FOREIGN KEY (fk_eqms_inventory_location_id) REFERENCES organization.eqms_inventory_location(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_inventory_stock
    ADD CONSTRAINT fk_eis_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_inventory_stock
    ADD CONSTRAINT fk_eis_part_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_lk_id) REFERENCES dnd.eqms_part_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_requisition_part_detail
    ADD CONSTRAINT fk_eprpd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_requisition_part_detail
    ADD CONSTRAINT fk_eprpd_part_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_lk_id) REFERENCES dnd.eqms_part_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_requisition_part_detail
    ADD CONSTRAINT fk_eprpd_purchase_requisition_id FOREIGN KEY (fk_eqms_purchase_requisition_id) REFERENCES purchase.eqms_purchase_requisition(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

