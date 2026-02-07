ALTER TABLE ONLY vendor.eqms_part_category
    ADD CONSTRAINT fk_epc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_part_category
    ADD CONSTRAINT fk_epc_part_category_subclass_lk FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_category_subclass_lk_id) REFERENCES organization.eqms_part_category_subclass_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY vendor.eqms_part_category
    ADD CONSTRAINT fk_epc_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY vendor.eqms_part_category_supporting_files
    ADD CONSTRAINT fk_epcsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY vendor.eqms_part_category_supporting_files
    ADD CONSTRAINT fk_epcsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_part_category_supporting_files
    ADD CONSTRAINT fk_epcsf_part_category_id FOREIGN KEY (fk_eqms_part_category_id) REFERENCES vendor.eqms_part_category(id);

