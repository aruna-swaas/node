ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in
    ADD CONSTRAINT fk_eppsb_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in
    ADD CONSTRAINT fk_eppsb_project_product_variants_id FOREIGN KEY (fk_eqms_project_product_variants_id) REFERENCES dnd.eqms_project_product_variants(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in_equipment
    ADD CONSTRAINT fk_eppsbie_equipment_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_equipment_type_id) REFERENCES organization.eqms_equipment_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in_equipment
    ADD CONSTRAINT fk_eppsbie_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in_equipment
    ADD CONSTRAINT fk_eppsbie_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in_jig
    ADD CONSTRAINT fk_eppsbij_jigs_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_jigs_type_id) REFERENCES organization.eqms_jig_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in_jig
    ADD CONSTRAINT fk_eppsbij_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in_jig
    ADD CONSTRAINT fk_eppsbij_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in_test_prot
    ADD CONSTRAINT fk_eppsbitp_feature_model_mapper_id FOREIGN KEY (fk_eqms_pre_prod_feature_model_mapper_id) REFERENCES pre_production.eqms_pre_prod_feature_model_mapper(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in_test_prot
    ADD CONSTRAINT fk_eppsbitp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in_test_prot
    ADD CONSTRAINT fk_eppsbitp_set_burn_in_id FOREIGN KEY (fk_eqms_pre_prod_set_burn_in_id) REFERENCES pre_production.eqms_pre_prod_set_burn_in(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in_equipment
    ADD CONSTRAINT fk_eppsbie_test_prot_id FOREIGN KEY (fk_eqms_pre_prod_set_burn_in_test_prot_id) REFERENCES pre_production.eqms_pre_prod_set_burn_in_test_prot(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in_jig
    ADD CONSTRAINT fk_eppsbij_test_prot_id FOREIGN KEY (fk_eqms_pre_prod_set_burn_in_test_prot_id) REFERENCES pre_production.eqms_pre_prod_set_burn_in_test_prot(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in_tool_type
    ADD CONSTRAINT fk_eppsbitt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in_tool_type
    ADD CONSTRAINT fk_eppsbitt_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in_tool_type
    ADD CONSTRAINT fk_eppsbitt_tool_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_tool_type_id) REFERENCES organization.eqms_tools(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in_tool_type
    ADD CONSTRAINT fk_eppsbitt_test_prot_id FOREIGN KEY (fk_eqms_pre_prod_set_burn_in_test_prot_id) REFERENCES pre_production.eqms_pre_prod_set_burn_in_test_prot(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in_work_inst_step
    ADD CONSTRAINT fk_eppsbiwis_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in_work_inst_step
    ADD CONSTRAINT fk_eppsbiwis_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_set_burn_in_work_inst_step
    ADD CONSTRAINT fk_eppsbiwis_test_prot_id FOREIGN KEY (fk_eqms_pre_prod_set_burn_in_test_prot_id) REFERENCES pre_production.eqms_pre_prod_set_burn_in_test_prot(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

