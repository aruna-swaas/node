ALTER TABLE ONLY dnd.eqms_execution_stage_verification
    ADD CONSTRAINT fk_edir_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification
    ADD CONSTRAINT fk_eesv_execution_stage_verification_plan_dir_id FOREIGN KEY (fk_eqms_execution_stage_verification_plan_dir_id) REFERENCES dnd.eqms_execution_stage_verification_plan_dir(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification
    ADD CONSTRAINT fk_eqms_tested_user_id_id FOREIGN KEY (fk_eqms_tested_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_equipments
    ADD CONSTRAINT fk_eesve_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_equipments
    ADD CONSTRAINT fk_eqms_equipment_item_id FOREIGN KEY (fk_eqms_equipment_item_id) REFERENCES organization.eqms_equipment_item(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_equipments
    ADD CONSTRAINT fk_eesve_execution_stage_verification_id FOREIGN KEY (fk_eqms_execution_stage_verification_id) REFERENCES dnd.eqms_execution_stage_verification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_jigs
    ADD CONSTRAINT fk_eesvj_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_jigs
    ADD CONSTRAINT fk_eqms_jig_item_id FOREIGN KEY (fk_eqms_jig_item_id) REFERENCES organization.eqms_jig_item(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_jigs
    ADD CONSTRAINT fk_eesvj_execution_stage_verification_id FOREIGN KEY (fk_eqms_execution_stage_verification_id) REFERENCES dnd.eqms_execution_stage_verification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_report
    ADD CONSTRAINT fk_eesvr_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id);

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_report
    ADD CONSTRAINT fk_eesvr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_report
    ADD CONSTRAINT fk_eesvr_execution_stage_verification_id FOREIGN KEY (fk_eqms_execution_stage_verification_id) REFERENCES dnd.eqms_execution_stage_verification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_tools
    ADD CONSTRAINT fk_eesvt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_tools
    ADD CONSTRAINT fk_eqms_tools_item_id FOREIGN KEY (fk_eqms_tools_item_id) REFERENCES organization.eqms_tool_item(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_tools
    ADD CONSTRAINT fk_eesvt_execution_stage_verification_id FOREIGN KEY (fk_eqms_execution_stage_verification_id) REFERENCES dnd.eqms_execution_stage_verification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_lifetime_calculation_criteria
    ADD CONSTRAINT fk_epld_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_lifetime_calculation_criteria_supp_files
    ADD CONSTRAINT fk_elccsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_lifetime_calculation_criteria_supp_files
    ADD CONSTRAINT fk_elccsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_product_life_declaration
    ADD CONSTRAINT fk_epld_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_product_life_declaration
    ADD CONSTRAINT fk_eqms_execution_stage_verification_plan_dir_id FOREIGN KEY (fk_eqms_execution_stage_verification_plan_dir_id) REFERENCES dnd.eqms_execution_stage_verification_plan_dir(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_lifetime_calculation_criteria
    ADD CONSTRAINT fk_epld_product_life_declaration_id FOREIGN KEY (fk_eqms_product_life_declaration_id) REFERENCES dnd.eqms_product_life_declaration(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_lifetime_calculation_criteria_supp_files
    ADD CONSTRAINT fk_elccsf_lifetime_calculation_criteria_id FOREIGN KEY (fk_eqms_lifetime_calculation_criteria_id) REFERENCES dnd.eqms_lifetime_calculation_criteria(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

