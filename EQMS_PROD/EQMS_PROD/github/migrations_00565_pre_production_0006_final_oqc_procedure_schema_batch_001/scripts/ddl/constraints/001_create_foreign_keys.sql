ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_insp_prot_equipment
    ADD CONSTRAINT fk_epfoipte_equipment_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_equipment_type_id) REFERENCES organization.eqms_equipment_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_insp_prot_equipment
    ADD CONSTRAINT fk_epfoipte_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_insp_prot_equipment
    ADD CONSTRAINT fk_epfoipte_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_insp_prot_jig
    ADD CONSTRAINT fk_epfoiptj_jigs_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_jigs_type_id) REFERENCES organization.eqms_jig_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_insp_prot_jig
    ADD CONSTRAINT fk_epfoiptj_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_insp_prot_jig
    ADD CONSTRAINT fk_epfoiptj_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_insp_prot_model_mapper
    ADD CONSTRAINT fk_eppfiopmm_project_product_variants_id FOREIGN KEY (fk_eqms_project_product_variants_id) REFERENCES dnd.eqms_project_product_variants(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_insp_prot_model_mapper
    ADD CONSTRAINT fk_eppfopimm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_insp_prot_equipment
    ADD CONSTRAINT fk_epfoipte_insp_prot_model_mapper_id FOREIGN KEY (fk_eqms_pre_prod_final_oqc_insp_prot_model_mapper_id) REFERENCES pre_production.eqms_pre_prod_final_oqc_insp_prot_model_mapper(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_insp_prot_jig
    ADD CONSTRAINT fk_epfoiptj_insp_prot_model_mapper_id FOREIGN KEY (fk_eqms_pre_prod_final_oqc_insp_prot_model_mapper_id) REFERENCES pre_production.eqms_pre_prod_final_oqc_insp_prot_model_mapper(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_insp_prot_tool_type
    ADD CONSTRAINT fk_epfoiptt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_insp_prot_tool_type
    ADD CONSTRAINT fk_epfoiptt_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_insp_prot_tool_type
    ADD CONSTRAINT fk_epfoiptt_tool_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_tool_type_id) REFERENCES organization.eqms_tools(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_insp_prot_tool_type
    ADD CONSTRAINT fk_epfoiptt_insp_prot_model_mapper_id FOREIGN KEY (fk_eqms_pre_prod_final_oqc_insp_prot_model_mapper_id) REFERENCES pre_production.eqms_pre_prod_final_oqc_insp_prot_model_mapper(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_insp_prot_work_inst_step
    ADD CONSTRAINT fk_epfoiptwis_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_insp_prot_work_inst_step
    ADD CONSTRAINT fk_epfoiptwis_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_insp_prot_work_inst_step
    ADD CONSTRAINT fk_epfoiptwis_insp_prot_model_mapper_id FOREIGN KEY (fk_eqms_pre_prod_final_oqc_insp_prot_model_mapper_id) REFERENCES pre_production.eqms_pre_prod_final_oqc_insp_prot_model_mapper(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_pack_prot_equipment
    ADD CONSTRAINT fk_epfoppte_equipment_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_equipment_type_id) REFERENCES organization.eqms_equipment_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_pack_prot_equipment
    ADD CONSTRAINT fk_epfoppte_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_pack_prot_equipment
    ADD CONSTRAINT fk_epfoppte_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_pack_prot_jig
    ADD CONSTRAINT fk_epfopptj_jigs_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_jigs_type_id) REFERENCES organization.eqms_jig_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_pack_prot_jig
    ADD CONSTRAINT fk_epfopptj_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_pack_prot_jig
    ADD CONSTRAINT fk_epfopptj_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_pack_prot_model_mapper
    ADD CONSTRAINT fk_eppfopmm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_pack_prot_model_mapper
    ADD CONSTRAINT fk_eppfopmm_project_product_variants_id FOREIGN KEY (fk_eqms_project_product_variants_id) REFERENCES dnd.eqms_project_product_variants(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_pack_prot_equipment
    ADD CONSTRAINT fk_epfoppte_pack_prot_model_mapper_id FOREIGN KEY (fk_eqms_pre_prod_final_oqc_pack_prot_model_mapper_id) REFERENCES pre_production.eqms_pre_prod_final_oqc_pack_prot_model_mapper(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_pack_prot_jig
    ADD CONSTRAINT fk_epfopptj_pack_prot_model_mapper_id FOREIGN KEY (fk_eqms_pre_prod_final_oqc_pack_prot_model_mapper_id) REFERENCES pre_production.eqms_pre_prod_final_oqc_pack_prot_model_mapper(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_pack_prot_tool_type
    ADD CONSTRAINT fk_epfopptt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_pack_prot_tool_type
    ADD CONSTRAINT fk_epfopptt_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_pack_prot_tool_type
    ADD CONSTRAINT fk_epfopptt_tool_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_tool_type_id) REFERENCES organization.eqms_tools(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_pack_prot_tool_type
    ADD CONSTRAINT fk_epfopptt_pack_prot_model_mapper_id FOREIGN KEY (fk_eqms_pre_prod_final_oqc_pack_prot_model_mapper_id) REFERENCES pre_production.eqms_pre_prod_final_oqc_pack_prot_model_mapper(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_pack_prot_work_inst_step
    ADD CONSTRAINT fk_epfopptwis_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_pack_prot_work_inst_step
    ADD CONSTRAINT fk_epfopptwis_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_pack_prot_work_inst_step
    ADD CONSTRAINT fk_epfopptwis_pack_prot_model_mapper_id FOREIGN KEY (fk_eqms_pre_prod_final_oqc_pack_prot_model_mapper_id) REFERENCES pre_production.eqms_pre_prod_final_oqc_pack_prot_model_mapper(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_test_prot_equipment
    ADD CONSTRAINT fk_epfotpte_equipment_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_equipment_type_id) REFERENCES organization.eqms_equipment_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_test_prot_equipment
    ADD CONSTRAINT fk_epfotpte_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_test_prot_equipment
    ADD CONSTRAINT fk_epfotpte_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_test_prot_feat_model_map
    ADD CONSTRAINT fk_eppfotpfmm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_test_prot_feat_model_map
    ADD CONSTRAINT fk_eppfotpfmm_pre_prod_feature_model_mapper_id FOREIGN KEY (fk_eqms_pre_prod_feature_model_mapper_id) REFERENCES pre_production.eqms_pre_prod_feature_model_mapper(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_test_prot_equipment
    ADD CONSTRAINT fk_epfotpte_test_prot_feat_model_map_id FOREIGN KEY (fk_eqms_pre_prod_final_oqc_test_prot_feat_model_map_id) REFERENCES pre_production.eqms_pre_prod_final_oqc_test_prot_feat_model_map(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_test_prot_jig
    ADD CONSTRAINT fk_epfotptj_jigs_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_jigs_type_id) REFERENCES organization.eqms_jig_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_test_prot_jig
    ADD CONSTRAINT fk_epfotptj_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_test_prot_jig
    ADD CONSTRAINT fk_epfotptj_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_test_prot_jig
    ADD CONSTRAINT fk_epfotptj_test_prot_feat_model_map_id FOREIGN KEY (fk_eqms_pre_prod_final_oqc_test_prot_feat_model_map_id) REFERENCES pre_production.eqms_pre_prod_final_oqc_test_prot_feat_model_map(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_test_prot_tool_type
    ADD CONSTRAINT fk_epfotptt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_test_prot_tool_type
    ADD CONSTRAINT fk_epfotptt_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_test_prot_tool_type
    ADD CONSTRAINT fk_epfotptt_tool_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_tool_type_id) REFERENCES organization.eqms_tools(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_test_prot_tool_type
    ADD CONSTRAINT fk_epfotptt_test_prot_feat_model_map_id FOREIGN KEY (fk_eqms_pre_prod_final_oqc_test_prot_feat_model_map_id) REFERENCES pre_production.eqms_pre_prod_final_oqc_test_prot_feat_model_map(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_test_prot_work_inst_step
    ADD CONSTRAINT fk_epfotptwis_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_test_prot_work_inst_step
    ADD CONSTRAINT fk_epfotptwis_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_final_oqc_test_prot_work_inst_step
    ADD CONSTRAINT fk_epfotptwis_test_prot_feat_model_map_id FOREIGN KEY (fk_eqms_pre_prod_final_oqc_test_prot_feat_model_map_id) REFERENCES pre_production.eqms_pre_prod_final_oqc_test_prot_feat_model_map(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

