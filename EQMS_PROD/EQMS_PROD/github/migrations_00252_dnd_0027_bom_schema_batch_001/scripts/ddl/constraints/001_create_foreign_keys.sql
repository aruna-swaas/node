ALTER TABLE ONLY dnd.eqms_bom_assembly_part_details
    ADD CONSTRAINT fk_ebapd_assembly_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_assembly_type_lk_id) REFERENCES organization.eqms_assembly_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_assembly_part_details
    ADD CONSTRAINT fk_ebapd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_assembly_part_details
    ADD CONSTRAINT fk_ebapd_part_component_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_component_type_lk_id) REFERENCES organization.eqms_part_component_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_assembly_part_details
    ADD CONSTRAINT fk_ebapd_part_quantity_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_quantity_type_lk_id) REFERENCES organization.eqms_part_quantity_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_assembly_part_details
    ADD CONSTRAINT fk_ebapd_part_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_type_lk_id) REFERENCES organization.eqms_part_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_assembly_parts
    ADD CONSTRAINT fk_ebap_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_master
    ADD CONSTRAINT fk_ebm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_master
    ADD CONSTRAINT fk_eqms_bom_publish_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_bom_publish_status_lk_id) REFERENCES organization.eqms_bom_publish_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_master
    ADD CONSTRAINT fk_eqms_bom_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_bom_type_lk_id) REFERENCES organization.eqms_bom_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_master
    ADD CONSTRAINT fk_eqms_organization_product_id FOREIGN KEY (fk_eqms_organization_product_id) REFERENCES organization.eqms_organization_product(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_snapshot
    ADD CONSTRAINT fk_ebs_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_snapshot
    ADD CONSTRAINT fk_ebs_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_master
    ADD CONSTRAINT fk_eqms_bom_snapshot_id FOREIGN KEY (fk_eqms_bom_snapshot_id) REFERENCES dnd.eqms_bom_snapshot(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_upload
    ADD CONSTRAINT fk_ebm_product_variant_id FOREIGN KEY (fk_eqms_product_variant_id) REFERENCES organization.eqms_product_variants(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_upload
    ADD CONSTRAINT fk_ebu_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_upload
    ADD CONSTRAINT fk_ebu_bom_snapshot_id FOREIGN KEY (fk_eqms_bom_snapshot_id) REFERENCES dnd.eqms_bom_snapshot(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_upload_error_log
    ADD CONSTRAINT fk_ebuel_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_upload_error_log
    ADD CONSTRAINT fk_ebuel_bom_upload_id FOREIGN KEY (fk_eqms_bom_upload_id) REFERENCES dnd.eqms_bom_upload(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_upload_supporting_files
    ADD CONSTRAINT fk_ebusf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_upload_supporting_files
    ADD CONSTRAINT fk_ebusf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_upload_supporting_files
    ADD CONSTRAINT fk_ebusf_bom_upload_id FOREIGN KEY (fk_eqms_bom_upload_id) REFERENCES dnd.eqms_bom_upload(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_variant_master
    ADD CONSTRAINT fk_ebvm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_variant_master
    ADD CONSTRAINT fk_ebvm_product_variant_id FOREIGN KEY (fk_eqms_product_variant_id) REFERENCES organization.eqms_product_variants(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_variant_master
    ADD CONSTRAINT fk_ebvm_bom_master_id FOREIGN KEY (fk_eqms_bom_master_id) REFERENCES dnd.eqms_bom_master(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_assembly_parts
    ADD CONSTRAINT fk_ebap_bom_variant_master_id FOREIGN KEY (fk_eqms_bom_variant_master_id) REFERENCES dnd.eqms_bom_variant_master(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_part_drawing_supporting_files
    ADD CONSTRAINT fk_epdsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_part_drawing_supporting_files
    ADD CONSTRAINT fk_epdsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_assembly_part_details
    ADD CONSTRAINT fk_ebapd_bom_assembly_parts_id FOREIGN KEY (fk_eqms_bom_assembly_parts_id) REFERENCES dnd.eqms_bom_assembly_parts(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_bom_assembly_parts
    ADD CONSTRAINT fk_ebap_parent_bom_assembly_parts_id FOREIGN KEY (fk_eqms_parent_bom_assembly_parts_id) REFERENCES dnd.eqms_bom_assembly_parts(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

