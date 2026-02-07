ALTER TABLE ONLY vendor.eqms_sample_order_part_mapper
    ADD CONSTRAINT fk_esopm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_sample_orders
    ADD CONSTRAINT fk_eso_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_sample_orders
    ADD CONSTRAINT fk_eso_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY vendor.eqms_sample_orders
    ADD CONSTRAINT fk_eso_vendor_id FOREIGN KEY (fk_eqms_vendor_id) REFERENCES vendor.eqms_vendors(id);

ALTER TABLE ONLY vendor.eqms_sample_order_part_mapper
    ADD CONSTRAINT fk_esopm_sample_orders_id FOREIGN KEY (fk_eqms_sample_orders_id) REFERENCES vendor.eqms_sample_orders(id);

ALTER TABLE ONLY vendor.eqms_sample_orders_supporting_files
    ADD CONSTRAINT fk_esosf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id);

ALTER TABLE ONLY vendor.eqms_sample_orders_supporting_files
    ADD CONSTRAINT fk_esosf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_sample_orders_supporting_files
    ADD CONSTRAINT fk_esosf_sample_orders_id FOREIGN KEY (fk_eqms_sample_orders_id) REFERENCES vendor.eqms_sample_orders(id);

ALTER TABLE ONLY vendor.eqms_vendor_agreement_checklist
    ADD CONSTRAINT fk_evac_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_vendor_agreement_checklist
    ADD CONSTRAINT fk_evac_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY vendor.eqms_vendor_agreement_checklist
    ADD CONSTRAINT fk_evac_vendor_id FOREIGN KEY (fk_eqms_vendor_id) REFERENCES vendor.eqms_vendors(id);

