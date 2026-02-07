ALTER TABLE ONLY purchase.eqms_purchase_infrastructure_request
    ADD CONSTRAINT fk_epir_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order
    ADD CONSTRAINT fk_epo_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order
    ADD CONSTRAINT fk_epo_purchase_order_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_purchase_order_type_lk_id) REFERENCES organization.eqms_purchase_order_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order
    ADD CONSTRAINT fk_epo_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order
    ADD CONSTRAINT fk_epo_vendor_id FOREIGN KEY (fk_eqms_vendor_id) REFERENCES vendor.eqms_vendors(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_infrastructure_request
    ADD CONSTRAINT fk_epir_purchase_order_id FOREIGN KEY (fk_eqms_purchase_order_id) REFERENCES purchase.eqms_purchase_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order_infrastructure_detail
    ADD CONSTRAINT fk_epoid_infrastructure_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_infrastructure_type_id) REFERENCES organization.eqms_infrastructure_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order_infrastructure_detail
    ADD CONSTRAINT fk_epoid_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order_infrastructure_detail
    ADD CONSTRAINT fk_epoid_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order_infrastructure_detail
    ADD CONSTRAINT fk_eqms_purchase_infrastructure_request_id FOREIGN KEY (fk_eqms_purchase_infrastructure_request_id) REFERENCES purchase.eqms_purchase_infrastructure_request(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order_invoice_to
    ADD CONSTRAINT fk_epoit_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order_invoice_to
    ADD CONSTRAINT fk_epoit_purchase_order_id FOREIGN KEY (fk_eqms_purchase_order_id) REFERENCES purchase.eqms_purchase_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order_part_detail
    ADD CONSTRAINT fk_epopd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order_part_detail
    ADD CONSTRAINT fk_epopd_part_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_lk_id) REFERENCES dnd.eqms_part_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order_part_detail
    ADD CONSTRAINT fk_epopd_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order_part_detail
    ADD CONSTRAINT fk_epopd_purchase_order_id FOREIGN KEY (fk_eqms_purchase_order_id) REFERENCES purchase.eqms_purchase_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order_ship_to
    ADD CONSTRAINT fk_epost_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order_ship_to
    ADD CONSTRAINT fk_epost_purchase_order_id FOREIGN KEY (fk_eqms_purchase_order_id) REFERENCES purchase.eqms_purchase_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order_source_log
    ADD CONSTRAINT fk_eposl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order_source_log
    ADD CONSTRAINT fk_eposl_purchase_order_id FOREIGN KEY (fk_eqms_purchase_order_id) REFERENCES purchase.eqms_purchase_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order_supporting_files
    ADD CONSTRAINT fk_eposf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order_supporting_files
    ADD CONSTRAINT fk_eposf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order_supporting_files
    ADD CONSTRAINT fk_eposf_purchase_order_id FOREIGN KEY (fk_eqms_purchase_order_id) REFERENCES purchase.eqms_purchase_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_requisition
    ADD CONSTRAINT fk_epr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY purchase.eqms_purchase_order_source_log
    ADD CONSTRAINT fk_eposl_purchase_requisition_id FOREIGN KEY (fk_eqms_purchase_requisition_id) REFERENCES purchase.eqms_purchase_requisition(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

