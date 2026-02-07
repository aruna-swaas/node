ALTER TABLE ONLY pre_production.eqms_pre_prod_installation_qualification_metadata
    ADD CONSTRAINT fk_epiqm_installation_qualification_reporter_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_pre_prod_installation_qualification_reporter_type_lk_id) REFERENCES organization.eqms_pre_prod_installation_qualification_reporter_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_installation_qualification_metadata
    ADD CONSTRAINT fk_epiqm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_proc_valid_inst_qual
    ADD CONSTRAINT fk_eppviq_installation_qualification_group_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_pre_prod_installation_qualification_group_lk_id) REFERENCES organization.eqms_pre_prod_installation_qualification_group_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_proc_valid_inst_qual
    ADD CONSTRAINT fk_eppviq_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_proc_valid_inst_qual
    ADD CONSTRAINT fk_eppviq_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_proc_valid_inst_qual
    ADD CONSTRAINT fk_eppviq_verification_result_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_verification_result_lk_id) REFERENCES organization.eqms_verification_result_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_proc_valid_perf_qual
    ADD CONSTRAINT fk_eppvpq_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_proc_valid_perf_qual
    ADD CONSTRAINT fk_eppvpq_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_proc_valid_perf_qual
    ADD CONSTRAINT fk_eppvpq_verification_result_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_verification_result_lk_id) REFERENCES organization.eqms_verification_result_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_process_validation
    ADD CONSTRAINT fk_eppv_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_process_validation
    ADD CONSTRAINT fk_eppv_process_validation_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_pre_prod_process_validation_type_lk_id) REFERENCES organization.eqms_pre_prod_process_validation_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_process_validation
    ADD CONSTRAINT fk_eppv_project_id FOREIGN KEY (fk_eqms_pre_prod_product_trace_card_process_checklist_id) REFERENCES pre_production.eqms_pre_prod_product_trace_card_process_checklist(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_installation_qualification_metadata
    ADD CONSTRAINT fk_epiqm_process_validation_id FOREIGN KEY (fk_eqms_pre_prod_process_validation_id) REFERENCES pre_production.eqms_pre_prod_process_validation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_proc_valid_inst_qual
    ADD CONSTRAINT fk_eppviq_installation_qualification_metadata_id FOREIGN KEY (fk_eqms_pre_prod_installation_qualification_metadata_id) REFERENCES pre_production.eqms_pre_prod_installation_qualification_metadata(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_proc_valid_perf_qual
    ADD CONSTRAINT fk_eppvpq_process_validation_id FOREIGN KEY (fk_eqms_pre_prod_process_validation_id) REFERENCES pre_production.eqms_pre_prod_process_validation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_process_validation_case_settings
    ADD CONSTRAINT fk_eppvcs_case_settings_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_pre_prod_case_settings_type_lk_id) REFERENCES organization.eqms_pre_prod_case_settings_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_process_validation_case_settings
    ADD CONSTRAINT fk_eppvcs_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_process_validation_case_settings
    ADD CONSTRAINT fk_eppvcs_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_process_validation_case_settings
    ADD CONSTRAINT fk_eppvcs_process_validation_id FOREIGN KEY (fk_eqms_pre_prod_process_validation_id) REFERENCES pre_production.eqms_pre_prod_process_validation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

