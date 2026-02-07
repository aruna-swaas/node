ALTER TABLE ONLY qc.eqms_goods_inward
    ADD CONSTRAINT fk_egi_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_goods_inward
    ADD CONSTRAINT fk_egi_purchase_order_id FOREIGN KEY (fk_eqms_purchase_order_id) REFERENCES purchase.eqms_purchase_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_goods_inward
    ADD CONSTRAINT fk_egi_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_goods_inward_detail
    ADD CONSTRAINT fk_egi_sanity_check_inspection_id FOREIGN KEY (fk_eqms_sanity_check_inspection_id) REFERENCES qc.eqms_sanity_check_inspection(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_goods_inward_detail
    ADD CONSTRAINT fk_egid_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_goods_inward_detail
    ADD CONSTRAINT fk_egid_goods_inward_id FOREIGN KEY (fk_eqms_goods_inward_id) REFERENCES qc.eqms_goods_inward(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_hardware_test_procedure_spec
    ADD CONSTRAINT fk_ehtps_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_hardware_test_procedure_spec
    ADD CONSTRAINT fk_ehtps_part_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_lk_id) REFERENCES dnd.eqms_part_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

