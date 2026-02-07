ALTER TABLE ONLY pre_production.eqms_pre_prod_bom_applicable_settings
    ADD CONSTRAINT fk_eppbas_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_bom_applicable_settings
    ADD CONSTRAINT fk_eppbas_pre_prod_bom_feature_settings_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_pre_prod_bom_feature_settings_lk_id) REFERENCES organization.eqms_pre_prod_bom_feature_settings_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_bom_assembly_part_item_details
    ADD CONSTRAINT fk_ebapd_bom_assembly_parts_id FOREIGN KEY (fk_eqms_bom_assembly_parts_id) REFERENCES dnd.eqms_bom_assembly_parts(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_bom_assembly_part_item_details
    ADD CONSTRAINT fk_eppbapid_equipment_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_equipment_lk_id) REFERENCES organization.eqms_equipment_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_bom_assembly_part_item_details
    ADD CONSTRAINT fk_eppbapid_part_quantity_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_quantity_type_lk_id) REFERENCES organization.eqms_part_quantity_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_bom_assembly_part_item_details
    ADD CONSTRAINT fk_eppfop_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_bom_assembly_part_item_details
    ADD CONSTRAINT fk_eqms_bom_part_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_bom_part_type_lk_id) REFERENCES organization.eqms_bom_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_bom_applicable_settings
    ADD CONSTRAINT fk_eppbsd_pre_prod_bom_assembly_part_item_details FOREIGN KEY (fk_eqms_pre_prod_bom_assembly_part_item_details_id) REFERENCES pre_production.eqms_pre_prod_bom_assembly_part_item_details(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_bom_assembly_part_item_details_supp_files
    ADD CONSTRAINT fk_eppbapidsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_bom_assembly_part_item_details_supp_files
    ADD CONSTRAINT fk_eppbapidsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_bom_assembly_part_item_details_supp_files
    ADD CONSTRAINT fk_eppbapidsf_pre_prod_bom_assembly_part_item FOREIGN KEY (fk_eqms_pre_prod_bom_assembly_part_item) REFERENCES pre_production.eqms_pre_prod_bom_assembly_part_item_details(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_bom_supplier_details
    ADD CONSTRAINT fk_eppbsd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_bom_supplier_details
    ADD CONSTRAINT fk_eppbsd_vendors_id FOREIGN KEY (fk_eqms_vendors_id) REFERENCES vendor.eqms_vendors(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_bom_supplier_details
    ADD CONSTRAINT fk_eppbsd_pre_prod_bom_assembly_part_item_details FOREIGN KEY (fk_eqms_pre_prod_bom_assembly_part_item_details_id) REFERENCES pre_production.eqms_pre_prod_bom_assembly_part_item_details(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

