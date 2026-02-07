ALTER TABLE ONLY infrastructure.eqms_process_validation
    ADD CONSTRAINT fk_ep_infrastructure_id FOREIGN KEY (fk_eqms_infrastructure_id) REFERENCES infrastructure.eqms_infrastructure(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_process_validation
    ADD CONSTRAINT fk_ep_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_process_validation_iqc
    ADD CONSTRAINT fk_ep_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_process_validation_iqc
    ADD CONSTRAINT fk_ep_process_validation_id FOREIGN KEY (fk_eqms_process_validation_id) REFERENCES infrastructure.eqms_process_validation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_process_validation_iqc_details
    ADD CONSTRAINT fk_ep_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_process_validation_iqc_details
    ADD CONSTRAINT fk_ep_verification_result_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_verification_result_lk_id) REFERENCES organization.eqms_verification_result_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_process_validation_iqc_details
    ADD CONSTRAINT fk_epviqcd_iqc_group_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_iqc_group_lk_id) REFERENCES organization.eqms_iqc_group_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_process_validation_iqc_details
    ADD CONSTRAINT fk_ep_process_validation_iqc_id FOREIGN KEY (fk_eqms_process_validation_iqc_id) REFERENCES infrastructure.eqms_process_validation_iqc(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_process_validation_oqc
    ADD CONSTRAINT fk_ep_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_process_validation_oqc
    ADD CONSTRAINT fk_ep_process_validation_id FOREIGN KEY (fk_eqms_process_validation_id) REFERENCES infrastructure.eqms_process_validation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_process_validation_oqc_best_case_details
    ADD CONSTRAINT fk_ep_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_process_validation_oqc_best_case_details
    ADD CONSTRAINT fk_ep_process_validation_oqc_id FOREIGN KEY (fk_eqms_process_validation_oqc_id) REFERENCES infrastructure.eqms_process_validation_oqc(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_process_validation_oqc_worst_case_details
    ADD CONSTRAINT fk_ep_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_process_validation_oqc_worst_case_details
    ADD CONSTRAINT fk_ep_process_validation_oqc_id FOREIGN KEY (fk_eqms_process_validation_oqc_id) REFERENCES infrastructure.eqms_process_validation_oqc(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_process_validation_pqc
    ADD CONSTRAINT fk_ep_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_process_validation_pqc
    ADD CONSTRAINT fk_ep_process_validation_id FOREIGN KEY (fk_eqms_process_validation_id) REFERENCES infrastructure.eqms_process_validation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_process_validation_pqc_details
    ADD CONSTRAINT fk_ep_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_process_validation_pqc_details
    ADD CONSTRAINT fk_ep_verification_result_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_verification_result_lk_id) REFERENCES organization.eqms_verification_result_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_process_validation_pqc_details
    ADD CONSTRAINT fk_ep_process_validation_pqc_id FOREIGN KEY (fk_eqms_process_validation_pqc_id) REFERENCES infrastructure.eqms_process_validation_pqc(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

