ALTER TABLE ONLY pre_production.eqms_pre_prod_packaging_storage_instruction
    ADD CONSTRAINT fk_epppsi_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_packaging_storage_instruction
    ADD CONSTRAINT fk_epppsi_project_product_variants_id FOREIGN KEY (fk_eqms_project_product_variants_id) REFERENCES dnd.eqms_project_product_variants(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_packaging_storage_instruction
    ADD CONSTRAINT fk_epppsi_storage_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_storage_type_lk_id) REFERENCES organization.eqms_storage_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_part_assembly_drawing
    ADD CONSTRAINT fk_eppad_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_part_assembly_drawing
    ADD CONSTRAINT fk_eppad_pre_prod_bom_applicable_settings_id FOREIGN KEY (fk_eqms_pre_prod_bom_applicable_settings_id) REFERENCES pre_production.eqms_pre_prod_bom_applicable_settings(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_storage_instruction_supporting_file
    ADD CONSTRAINT fk_eppsisf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_storage_instruction_supporting_file
    ADD CONSTRAINT fk_eppsisf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_storage_instruction_supporting_file
    ADD CONSTRAINT fk_eppsisf_pre_prod_packaging_storage_instruction_id FOREIGN KEY (fk_eqms_pre_prod_packaging_storage_instruction_id) REFERENCES pre_production.eqms_pre_prod_packaging_storage_instruction(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_team
    ADD CONSTRAINT fk_eppt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_team
    ADD CONSTRAINT fk_eppt_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

