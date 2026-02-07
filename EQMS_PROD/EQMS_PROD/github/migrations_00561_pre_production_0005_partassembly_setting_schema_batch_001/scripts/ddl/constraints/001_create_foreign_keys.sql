ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruc_supp_files
    ADD CONSTRAINT fk_eppawisf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruc_supp_files
    ADD CONSTRAINT fk_eppawisf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruction
    ADD CONSTRAINT fk_epaw_pre_prod_bom_applicable_settings_id FOREIGN KEY (fk_eqms_pre_prod_bom_applicable_settings_id) REFERENCES pre_production.eqms_pre_prod_bom_applicable_settings(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruction
    ADD CONSTRAINT fk_eppawi_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruction
    ADD CONSTRAINT fk_eppawi_project_product_variants_id FOREIGN KEY (fk_eqms_project_product_variants_id) REFERENCES dnd.eqms_project_product_variants(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruc_supp_files
    ADD CONSTRAINT fk_eppawisf_pre_prod_assembly_work_instruction_id FOREIGN KEY (fk_eqms_pre_prod_assembly_work_instruction_id) REFERENCES pre_production.eqms_pre_prod_assembly_work_instruction(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruction_equipment
    ADD CONSTRAINT fk_eppawie_equipment_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_equipment_type_id) REFERENCES organization.eqms_equipment_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruction_equipment
    ADD CONSTRAINT fk_eppawie_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruction_equipment
    ADD CONSTRAINT fk_eppawie_pre_prod_assembly_work_instruction_id FOREIGN KEY (fk_eqms_pre_prod_assembly_work_instruction_id) REFERENCES pre_production.eqms_pre_prod_assembly_work_instruction(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruction_jig
    ADD CONSTRAINT fk_eppawij_jigs_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_jigs_type_id) REFERENCES organization.eqms_jig_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruction_jig
    ADD CONSTRAINT fk_eppawij_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruction_jig
    ADD CONSTRAINT fk_eppawij_pre_prod_assembly_work_instruction_id FOREIGN KEY (fk_eqms_pre_prod_assembly_work_instruction_id) REFERENCES pre_production.eqms_pre_prod_assembly_work_instruction(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruction_skill
    ADD CONSTRAINT fk_eppawis_hr_skill_master_id FOREIGN KEY (fk_eqms_hr_skill_master_id) REFERENCES hrcs.eqms_hr_skill_master(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruction_skill
    ADD CONSTRAINT fk_eppawis_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruction_skill
    ADD CONSTRAINT fk_eppawis_pre_prod_assembly_work_instruction_id FOREIGN KEY (fk_eqms_pre_prod_assembly_work_instruction_id) REFERENCES pre_production.eqms_pre_prod_assembly_work_instruction(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruction_step
    ADD CONSTRAINT fk_eppawist_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruction_step
    ADD CONSTRAINT fk_eppawist_pre_prod_assembly_work_instruction_id FOREIGN KEY (fk_eqms_pre_prod_assembly_work_instruction_id) REFERENCES pre_production.eqms_pre_prod_assembly_work_instruction(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruction_tool_type
    ADD CONSTRAINT fk_eppawitt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruction_tool_type
    ADD CONSTRAINT fk_eppawitt_tool_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_tool_type_id) REFERENCES organization.eqms_tools(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_assembly_work_instruction_tool_type
    ADD CONSTRAINT fk_eppawitt_pre_prod_assembly_work_instruction_id FOREIGN KEY (fk_eqms_pre_prod_assembly_work_instruction_id) REFERENCES pre_production.eqms_pre_prod_assembly_work_instruction(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_electrical_drawing
    ADD CONSTRAINT fk_eped_pre_prod_bom_applicable_settings_id FOREIGN KEY (fk_eqms_pre_prod_bom_applicable_settings_id) REFERENCES pre_production.eqms_pre_prod_bom_applicable_settings(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_electrical_drawing
    ADD CONSTRAINT fk_epped_drawing_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_drawing_type_lk_id) REFERENCES organization.eqms_drawing_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_electrical_drawing
    ADD CONSTRAINT fk_epped_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_electrical_drawing_supp_file
    ADD CONSTRAINT fk_eppedsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_electrical_drawing_supp_file
    ADD CONSTRAINT fk_eppedsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_electrical_drawing_supp_file
    ADD CONSTRAINT fk_eppedsf_pre_prod_electrical_drawing_id FOREIGN KEY (fk_eqms_pre_prod_electrical_drawing_id) REFERENCES pre_production.eqms_pre_prod_electrical_drawing(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_feature_model_mapper
    ADD CONSTRAINT fk_eppfmm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_feature_model_mapper
    ADD CONSTRAINT fk_eppfmm_project_product_variants_id FOREIGN KEY (fk_eqms_project_product_variants_id) REFERENCES dnd.eqms_project_product_variants(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_incoming_insp_spec_supporting_files
    ADD CONSTRAINT fk_eiissf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_incoming_insp_spec_supporting_files
    ADD CONSTRAINT fk_eiissf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_incoming_inspection_applicable_group
    ADD CONSTRAINT fk_eiiag_incoming_inspection_spec_group_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_pre_prod_incoming_inspection_spec_group_lk_id) REFERENCES organization.eqms_pre_prod_incoming_inspection_spec_group_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_incoming_inspection_applicable_group
    ADD CONSTRAINT fk_eiiag_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_incoming_inspection_spec_criteria
    ADD CONSTRAINT fk_eiisc_incoming_inspection_spec_criteria_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_pre_prod_incoming_inspection_spec_criteria_lk_id) REFERENCES organization.eqms_pre_prod_incoming_inspection_spec_criteria_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_incoming_inspection_spec_criteria
    ADD CONSTRAINT fk_eiisc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_incoming_inspection_spec_criteria
    ADD CONSTRAINT fk_eiisc_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_incoming_inspection_specification
    ADD CONSTRAINT fk_eiis_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_incoming_inspection_specification
    ADD CONSTRAINT fk_eiis_part_category_id FOREIGN KEY (fk_eqms_part_category_id) REFERENCES vendor.eqms_part_category(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_incoming_inspection_specification
    ADD CONSTRAINT fk_eiis_part_category_subclass_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_category_subclass_lk_id) REFERENCES organization.eqms_part_category_subclass_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_incoming_inspection_specification
    ADD CONSTRAINT fk_eiis_part_category_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_category_type_lk_id) REFERENCES organization.eqms_part_category_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_incoming_inspection_specification
    ADD CONSTRAINT fk_eiis_part_subcategory_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_subcategory_type_lk_id) REFERENCES organization.eqms_part_subcategory_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_incoming_inspection_specification
    ADD CONSTRAINT fk_eppiis_pre_prod_bom_applicable_settings_id FOREIGN KEY (fk_eqms_pre_prod_bom_applicable_settings_id) REFERENCES pre_production.eqms_pre_prod_bom_applicable_settings(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_incoming_inspection_specification
    ADD CONSTRAINT fk_evrec_equipment_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_equipment_lk_id) REFERENCES organization.eqms_equipment_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_incoming_inspection_specification
    ADD CONSTRAINT fk_evrec_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_incoming_insp_spec_supporting_files
    ADD CONSTRAINT fk_eiissf_incoming_inspection_specification_id FOREIGN KEY (fk_eqms_pre_prod_incoming_inspection_specification_id) REFERENCES pre_production.eqms_pre_prod_incoming_inspection_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_incoming_inspection_applicable_group
    ADD CONSTRAINT fk_eiiag_incoming_inspection_specification_idn FOREIGN KEY (fk_eqms_pre_prod_incoming_inspection_specification_id) REFERENCES pre_production.eqms_pre_prod_incoming_inspection_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_incoming_inspection_spec_criteria
    ADD CONSTRAINT fk_eiisc_incoming_inspection_applicable_group_id FOREIGN KEY (fk_eqms_pre_prod_incoming_inspection_applicable_group_id) REFERENCES pre_production.eqms_pre_prod_incoming_inspection_applicable_group(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_inventory_detail
    ADD CONSTRAINT fk_epid_pre_prod_bom_applicable_settings_id FOREIGN KEY (fk_eqms_pre_prod_bom_applicable_settings_id) REFERENCES pre_production.eqms_pre_prod_bom_applicable_settings(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_inventory_detail
    ADD CONSTRAINT fk_eppid_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_inventory_detail
    ADD CONSTRAINT fk_eppid_unit_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_unit_lk_id) REFERENCES organization.eqms_unit_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_iqa_exclusion
    ADD CONSTRAINT fk_epiqaex_pre_prod_bom_applicable_settings_id FOREIGN KEY (fk_eqms_pre_prod_bom_applicable_settings_id) REFERENCES pre_production.eqms_pre_prod_bom_applicable_settings(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_iqa_exclusion
    ADD CONSTRAINT fk_eppie_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_packaging_instruction_supporting_file
    ADD CONSTRAINT fk_epppisf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_packaging_instruction_supporting_file
    ADD CONSTRAINT fk_epppisf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_part_assembly_drawing_supp_file
    ADD CONSTRAINT fk_eppadsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_part_assembly_drawing_supp_file
    ADD CONSTRAINT fk_eppadsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_performance_qualification_final_result
    ADD CONSTRAINT fk_eppqf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_product_feature
    ADD CONSTRAINT fk_epppf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_product_feature
    ADD CONSTRAINT fk_epppf_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_product_feature
    ADD CONSTRAINT fk_epppf_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_feature_model_mapper
    ADD CONSTRAINT fk_eppfmm_pre_prod_product_feature_id FOREIGN KEY (fk_eqms_pre_prod_product_feature_id) REFERENCES pre_production.eqms_pre_prod_product_feature(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_serial_batch
    ADD CONSTRAINT fk_eppsb_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_serial_batch
    ADD CONSTRAINT fk_epsb_pre_prod_bom_applicable_settings_id FOREIGN KEY (fk_eqms_pre_prod_bom_applicable_settings_id) REFERENCES pre_production.eqms_pre_prod_bom_applicable_settings(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_shelf_life
    ADD CONSTRAINT fk_eppsl_non_conformed_location_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_non_conformed_location_lk_id) REFERENCES organization.eqms_non_conformed_location_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_shelf_life
    ADD CONSTRAINT fk_eppsl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_shelf_life
    ADD CONSTRAINT fk_epsl_pre_prod_bom_applicable_settings_id FOREIGN KEY (fk_eqms_pre_prod_bom_applicable_settings_id) REFERENCES pre_production.eqms_pre_prod_bom_applicable_settings(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_storage_environment
    ADD CONSTRAINT fk_eppse_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_storage_environment
    ADD CONSTRAINT fk_epse_pre_prod_bom_applicable_settings_id FOREIGN KEY (fk_eqms_pre_prod_bom_applicable_settings_id) REFERENCES pre_production.eqms_pre_prod_bom_applicable_settings(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

