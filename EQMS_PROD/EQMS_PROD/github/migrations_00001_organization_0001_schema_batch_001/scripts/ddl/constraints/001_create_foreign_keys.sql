ALTER TABLE ONLY organization.eqms_context_types
    ADD CONSTRAINT eqms_context_types_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_designation_lk
    ADD CONSTRAINT eqms_designation_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_employee_status_lk
    ADD CONSTRAINT eqms_employee_status_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_equipment_lk
    ADD CONSTRAINT eqms_equipment_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_gender_lk
    ADD CONSTRAINT eqms_gender_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_jig_lk
    ADD CONSTRAINT eqms_jig_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_languages
    ADD CONSTRAINT eqms_languages_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_menu_activity_access
    ADD CONSTRAINT eqms_menu_activity_access_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_organization_department
    ADD CONSTRAINT eqms_organization_department_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_organization_role_lk
    ADD CONSTRAINT eqms_organization_role_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_organization_site
    ADD CONSTRAINT eqms_organization_site_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_part_component_type_lk
    ADD CONSTRAINT eqms_part_component_type_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_part_quantity_type_lk
    ADD CONSTRAINT eqms_part_quantity_type_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_product_category_lk
    ADD CONSTRAINT eqms_product_category_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_product_group_lk
    ADD CONSTRAINT eqms_product_group_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_product_subtype_lk
    ADD CONSTRAINT eqms_product_subtype_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_product_type_lk
    ADD CONSTRAINT eqms_product_type_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_reg_country_lk
    ADD CONSTRAINT eqms_reg_country_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_responsibility_lk
    ADD CONSTRAINT eqms_responsibility_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_service_group_lk
    ADD CONSTRAINT eqms_service_group_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_status_lk
    ADD CONSTRAINT eqms_status_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_timezones
    ADD CONSTRAINT eqms_timezones_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_tools
    ADD CONSTRAINT eqms_tools_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_user_status_lk
    ADD CONSTRAINT eqms_user_status_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_value_acceptability_lk
    ADD CONSTRAINT eqms_value_acceptability_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_month_lk
    ADD CONSTRAINT uk_eml_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_entity_nomenclature_mappings
    ADD CONSTRAINT uk_entity_mappings_tenant_org_ref UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_entity_template
    ADD CONSTRAINT uk_entity_template_tenant_org_ref UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_year_lk
    ADD CONSTRAINT uk_eyl_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_nomenclature_mapping_joins
    ADD CONSTRAINT uk_mapping_joins_tenant_org_ref UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_nomenclature_name_parts
    ADD CONSTRAINT uk_name_parts_tenant_org_ref UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_nomenclature_category
    ADD CONSTRAINT uk_nomenclature_category_tenant_org_ref UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_nomenclature_sequence_defs
    ADD CONSTRAINT uk_sequence_defs_tenant_org_ref UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_assembly_type_lk
    ADD CONSTRAINT unique_eatl_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_bom_publish_status_lk
    ADD CONSTRAINT unique_ebpsl_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_bom_type_lk
    ADD CONSTRAINT unique_ebtl_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_equipment_category_lk
    ADD CONSTRAINT unique_eecl_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_entity_subscription
    ADD CONSTRAINT unique_ees_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_infrastructure_category_lk
    ADD CONSTRAINT unique_eicl_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_infrastructure_type_lk
    ADD CONSTRAINT unique_eitl_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_login_result_lk
    ADD CONSTRAINT unique_elrl_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_module
    ADD CONSTRAINT unique_em_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_nomenclature_join_type
    ADD CONSTRAINT unique_enjt_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_nomenclature_part_type
    ADD CONSTRAINT unique_enpt_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_part_type_lk
    ADD CONSTRAINT unique_eptl_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_selection_lk
    ADD CONSTRAINT unique_esl_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_schedule_status_lk
    ADD CONSTRAINT unique_essl_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_theme
    ADD CONSTRAINT unique_et_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_tool_category_lk
    ADD CONSTRAINT unique_etcl_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_unit_lk
    ADD CONSTRAINT unique_eul_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_menu_type_lk
    ADD CONSTRAINT unique_menu_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_roles_lk
    ADD CONSTRAINT unique_tnd_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_activity_lk
    ADD CONSTRAINT unique_tnt_org_activity_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_menu_lk
    ADD CONSTRAINT unique_tnt_org_menu_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_activity_lk
    ADD CONSTRAINT fk_eqms_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_assembly_type_lk
    ADD CONSTRAINT fk_eatl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_bom_publish_status_lk
    ADD CONSTRAINT fk_ebpsl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_bom_type_lk
    ADD CONSTRAINT fk_ebtl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_context_types
    ADD CONSTRAINT fk_ect_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_designation_lk
    ADD CONSTRAINT fk_edl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_employee_status_lk
    ADD CONSTRAINT fk_eesl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_entity_nomenclature_mappings
    ADD CONSTRAINT fk_entity_mappings_organization FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY organization.eqms_entity_subscription
    ADD CONSTRAINT fk_ees_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_entity_template
    ADD CONSTRAINT fk_entity_template_nomenclature_category FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nomenclature_category_id) REFERENCES organization.eqms_nomenclature_category(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_entity_template
    ADD CONSTRAINT fk_entity_template_organization FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY organization.eqms_equipment_category_lk
    ADD CONSTRAINT fk_eec_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_equipment_item
    ADD CONSTRAINT fk_eei_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_equipment_lk
    ADD CONSTRAINT fk_eel_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_equipment_lk
    ADD CONSTRAINT fk_eql_equipment_category_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_equipment_category_lk_id) REFERENCES organization.eqms_equipment_category_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_equipment_item
    ADD CONSTRAINT fk_eei_equipment_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_equipment_lk_id) REFERENCES organization.eqms_equipment_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_form_draft_supporting_files
    ADD CONSTRAINT fk_efdsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_form_drafts
    ADD CONSTRAINT fk_efd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_form_drafts
    ADD CONSTRAINT fk_efd_context_types_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_context_types_id) REFERENCES organization.eqms_context_types(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_gender_lk
    ADD CONSTRAINT fk_egl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_image
    ADD CONSTRAINT fk_ei_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_infrastructure_category_lk
    ADD CONSTRAINT fk_eicl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_infrastructure_type_lk
    ADD CONSTRAINT fk_eitl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_infrastructure_type_lk
    ADD CONSTRAINT fk_eitl_infrastructure_category_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_infrastructure_category_lk_id) REFERENCES organization.eqms_infrastructure_category_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_jig_item
    ADD CONSTRAINT fk_eji_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_jig_lk
    ADD CONSTRAINT fk_ejl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_jig_item
    ADD CONSTRAINT fk_eji_jig_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_jig_lk_id) REFERENCES organization.eqms_jig_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_languages
    ADD CONSTRAINT fk_el_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_login_result_lk
    ADD CONSTRAINT fk_elrl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_menu_activity_access
    ADD CONSTRAINT fk_emac_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_menu_activity_access
    ADD CONSTRAINT fk_emaa_activity_lk_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_activity_lk_ref_id) REFERENCES organization.eqms_activity_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_menu_instance
    ADD CONSTRAINT fk_emi_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_menu_lk
    ADD CONSTRAINT fk_eqms_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_menu_object
    ADD CONSTRAINT fk_emo_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_menu_type_lk
    ADD CONSTRAINT fk_emtl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_menu_lk
    ADD CONSTRAINT fk_eml_menu_type_lk_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_menu_type_lk_ref_id) REFERENCES organization.eqms_menu_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_menu_activity_access
    ADD CONSTRAINT fk_emaa_menu_lk_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_menu_lk_ref_id) REFERENCES organization.eqms_menu_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_menu_instance
    ADD CONSTRAINT fk_emi_menu_lk_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_menu_lk_ref_id) REFERENCES organization.eqms_menu_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_menu_object
    ADD CONSTRAINT fk_emo_menu_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_menu_ref_id) REFERENCES organization.eqms_menu_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_module
    ADD CONSTRAINT fk_em_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_entity_subscription
    ADD CONSTRAINT fk_ees_subscribed_module_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_subscribed_module_id) REFERENCES organization.eqms_module(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_entity_template
    ADD CONSTRAINT fk_entity_template_module FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_module_id) REFERENCES organization.eqms_module(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_month_lk
    ADD CONSTRAINT fk_eml_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY organization.eqms_nomenclature
    ADD CONSTRAINT fk_en_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_nomenclature_delimiter
    ADD CONSTRAINT fk_delimiter_organization FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY organization.eqms_nomenclature_join_type
    ADD CONSTRAINT fk_enjt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_nomenclature_mapping_conditions
    ADD CONSTRAINT fk_mapping_conditions_organization FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY organization.eqms_nomenclature_mapping_joins
    ADD CONSTRAINT fk_mapping_joins_organization FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY organization.eqms_nomenclature_mapping_joins
    ADD CONSTRAINT fk_enmj_nomenclature_join_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nomenclature_join_type_id) REFERENCES organization.eqms_nomenclature_join_type(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_nomenclature_name_parts
    ADD CONSTRAINT fk_name_parts_organization FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY organization.eqms_nomenclature_object_type_metadata_mapper
    ADD CONSTRAINT fk_enotmm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_nomenclature_part_date_formats
    ADD CONSTRAINT fk_enpdf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_nomenclature_part_type
    ADD CONSTRAINT fk_enpt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_nomenclature_name_parts
    ADD CONSTRAINT fk_ennp_nomenclature_part_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nomenclature_part_type_id) REFERENCES organization.eqms_nomenclature_part_type(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_nomenclature_part_variable
    ADD CONSTRAINT fk_enpv_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_nomenclature_sequence_counters
    ADD CONSTRAINT fk_sequence_counters_organization FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY organization.eqms_nomenclature_sequence_defs
    ADD CONSTRAINT fk_sequence_defs_organization FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY organization.eqms_nomenclature_name_parts
    ADD CONSTRAINT fk_name_parts_sequence_def FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_sequence_def_id) REFERENCES organization.eqms_nomenclature_sequence_defs(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_nomenclature_sequence_counters
    ADD CONSTRAINT fk_sequence_counters_sequence_def FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_sequence_def_id) REFERENCES organization.eqms_nomenclature_sequence_defs(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_nomenclature_variable_metadata_mapper
    ADD CONSTRAINT fk_envmm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_object_nomenclature
    ADD CONSTRAINT fk_eon_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_object_nomenclature
    ADD CONSTRAINT fk_eon_nomenclature_id FOREIGN KEY (fk_eqms_nomenclature_id) REFERENCES organization.eqms_nomenclature(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_object_nomenclature_part
    ADD CONSTRAINT fk_eonp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_object_nomenclature_part
    ADD CONSTRAINT fk_eonp_nomenclature_part_variable_id FOREIGN KEY (fk_eqms_nomenclature_part_variable_id) REFERENCES organization.eqms_nomenclature_part_variable(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_object_nomenclature_part
    ADD CONSTRAINT fk_eonp_object_nomenclature_id FOREIGN KEY (fk_eqms_object_nomenclature_id) REFERENCES organization.eqms_object_nomenclature(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_object_project_instance
    ADD CONSTRAINT fk_eopi_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_organization_department
    ADD CONSTRAINT fk_eod_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_organization_product
    ADD CONSTRAINT fk_eqms_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_organization_role_lk
    ADD CONSTRAINT fk_eorl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_organization_site
    ADD CONSTRAINT fk_eos_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_part_component_type_lk
    ADD CONSTRAINT fk_epctl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_part_quantity_type_lk
    ADD CONSTRAINT fk_epctl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_part_type_lk
    ADD CONSTRAINT fk_eptl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_product_category_lk
    ADD CONSTRAINT fk_epcl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_organization_product
    ADD CONSTRAINT fk_eqms_product_category_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_product_category_lk_id) REFERENCES organization.eqms_product_category_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_product_group_lk
    ADD CONSTRAINT fk_eqms_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_organization_product
    ADD CONSTRAINT fk_eqms_product_group_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_product_group_lk_id) REFERENCES organization.eqms_product_group_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_product_subtype_lk
    ADD CONSTRAINT fk_epsl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_product_type_lk
    ADD CONSTRAINT fk_eptl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_organization_product
    ADD CONSTRAINT fk_eqms_product_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_product_type_lk_id) REFERENCES organization.eqms_product_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_product_subtype_lk
    ADD CONSTRAINT fk_eop_product_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_product_type_lk_id) REFERENCES organization.eqms_product_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_organization_product
    ADD CONSTRAINT fk_eqms_product_subtype_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_product_subtype_lk_id) REFERENCES organization.eqms_product_subtype_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_product_variants
    ADD CONSTRAINT fk_epv_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_product_variants
    ADD CONSTRAINT fk_epv_selection_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_selection_lk_id) REFERENCES organization.eqms_selection_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_product_variants
    ADD CONSTRAINT fk_epv_organization_product_id FOREIGN KEY (fk_eqms_organization_product_id) REFERENCES organization.eqms_organization_product(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_reg_country_lk
    ADD CONSTRAINT fk_ercl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_responsibility_lk
    ADD CONSTRAINT fk_edl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_role_menu_activity_access
    ADD CONSTRAINT fk_eu_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_role_menu_activity_access
    ADD CONSTRAINT fk_ermaa_menu_activity_access_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_menu_activity_access_id) REFERENCES organization.eqms_menu_activity_access(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_roles_lk
    ADD CONSTRAINT fk_eqms_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_role_menu_activity_access
    ADD CONSTRAINT fk_erma_role_lk_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_role_lk_ref_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_schedule_status_lk
    ADD CONSTRAINT fk_essl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_service_group_lk
    ADD CONSTRAINT fk_esgl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_status_lk
    ADD CONSTRAINT fk_esl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_theme
    ADD CONSTRAINT fk_et_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_timezones
    ADD CONSTRAINT fk_et_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_tool_category_lk
    ADD CONSTRAINT fk_etcl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_tool_item
    ADD CONSTRAINT fk_et_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_tools
    ADD CONSTRAINT fk_et_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_tools
    ADD CONSTRAINT fk_et_tool_category_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_tool_category_lk_id) REFERENCES organization.eqms_tool_category_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_unit_lk
    ADD CONSTRAINT fk_eul_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_authentication_refresh_token
    ADD CONSTRAINT fk_euart_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_contact
    ADD CONSTRAINT fk_euc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_language
    ADD CONSTRAINT fk_eul_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_language
    ADD CONSTRAINT fk_eqms_languages_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_languages_id) REFERENCES organization.eqms_languages(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_login_tracking
    ADD CONSTRAINT fk_eult_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_login_tracking
    ADD CONSTRAINT fk_eult_login_result_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_login_result_lk_id) REFERENCES organization.eqms_login_result_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_pin
    ADD CONSTRAINT fk_eup_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_preference
    ADD CONSTRAINT fk_eup_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_preference
    ADD CONSTRAINT fk_eup_theme_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_theme_id) REFERENCES organization.eqms_theme(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_profile
    ADD CONSTRAINT fk_eud_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_profile
    ADD CONSTRAINT fk_eup_image_id FOREIGN KEY (fk_eqms_image_id) REFERENCES organization.eqms_image(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_profile
    ADD CONSTRAINT fk_eup_stage_image_id FOREIGN KEY (fk_eqms_stage_image_id) REFERENCES organization.eqms_image(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_responsibility
    ADD CONSTRAINT fk_eur_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_responsibility
    ADD CONSTRAINT fk_eurl_responsibility_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_responsibility_lk_id) REFERENCES organization.eqms_responsibility_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_roles
    ADD CONSTRAINT fk_eur_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_roles
    ADD CONSTRAINT fk_eur_role_lk_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_role_lk_ref_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_service_group
    ADD CONSTRAINT fk_eusg_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_service_group
    ADD CONSTRAINT fk_eusg_service_group_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_service_group_lk_id) REFERENCES organization.eqms_service_group_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_status_lk
    ADD CONSTRAINT fk_euv_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_timezone
    ADD CONSTRAINT fk_eut_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_timezone
    ADD CONSTRAINT fk_eqms_timezones_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_timezones_id) REFERENCES organization.eqms_timezones(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_verification
    ADD CONSTRAINT fk_euv_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_users
    ADD CONSTRAINT fk_eqms_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_users
    ADD CONSTRAINT fk_eu_organization_site_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_site_id) REFERENCES organization.eqms_organization_site(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_users
    ADD CONSTRAINT fk_eqms_user_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_user_status_lk_id) REFERENCES organization.eqms_user_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_form_drafts
    ADD CONSTRAINT fk_efd_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_form_draft_supporting_files
    ADD CONSTRAINT fk_efdsf_form_drafts_id FOREIGN KEY (fk_eqms_form_drafts_id) REFERENCES organization.eqms_form_drafts(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_authentication_refresh_token
    ADD CONSTRAINT fk_eqms_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_contact
    ADD CONSTRAINT fk_eqms_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_language
    ADD CONSTRAINT fk_eqms_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_login_tracking
    ADD CONSTRAINT fk_eqms_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_pin
    ADD CONSTRAINT fk_eup_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_preference
    ADD CONSTRAINT fk_eup_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_profile
    ADD CONSTRAINT fk_eup_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_responsibility
    ADD CONSTRAINT fk_eurl_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_roles
    ADD CONSTRAINT fk_eqms_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_service_group
    ADD CONSTRAINT fk_eusg_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_timezone
    ADD CONSTRAINT fk_eqms_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_user_verification
    ADD CONSTRAINT fk_eqms_user_contact_id FOREIGN KEY (fk_eqms_user_contact_id) REFERENCES organization.eqms_user_contact(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_value_acceptability_lk
    ADD CONSTRAINT fk_eval_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_year_lk
    ADD CONSTRAINT fk_eyl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY organization.eqms_nomenclature_part_date_formats
    ADD CONSTRAINT fk_enpdf_nomenclature_name_parts_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nomenclature_name_parts_id) REFERENCES organization.eqms_nomenclature_name_parts(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_nomenclature_mapping_conditions
    ADD CONSTRAINT fk_mapping_conditions_entity_mapping FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_nomenclature_mapping_id) REFERENCES organization.eqms_entity_nomenclature_mappings(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_entity_template
    ADD CONSTRAINT fk_entity_template_parent_entity FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_parent_entity_id) REFERENCES organization.eqms_entity_template(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_entity_nomenclature_mappings
    ADD CONSTRAINT fk_entity_mappings_name_part FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nomenclature_name_part_id) REFERENCES organization.eqms_nomenclature_name_parts(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_nomenclature_mapping_conditions
    ADD CONSTRAINT fk_mapping_conditions_mapping_join FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_mapping_join_id) REFERENCES organization.eqms_nomenclature_mapping_joins(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_nomenclature_name_parts
    ADD CONSTRAINT fk_name_parts_entity_template FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_template_id) REFERENCES organization.eqms_entity_template(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_nomenclature_mapping_joins
    ADD CONSTRAINT fk_mapping_joins_entity_mapping FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_nomenclature_mapping_id) REFERENCES organization.eqms_entity_nomenclature_mappings(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_nomenclature_delimiter
    ADD CONSTRAINT fk_delimiter_entity_template FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_template_id) REFERENCES organization.eqms_entity_template(eqms_tenant_key, fk_eqms_organization_id, ref_id);

