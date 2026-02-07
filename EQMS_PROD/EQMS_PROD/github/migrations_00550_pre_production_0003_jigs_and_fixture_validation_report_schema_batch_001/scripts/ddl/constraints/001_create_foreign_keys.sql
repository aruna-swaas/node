ALTER TABLE ONLY pre_production.eqms_pre_prod_jig_validation_report_supporting_file
    ADD CONSTRAINT fk_eppjvrsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_jig_validation_report_supporting_file
    ADD CONSTRAINT fk_eppjvrsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_jig_validation_report_supporting_file
    ADD CONSTRAINT fk_eppjvrsf_pre_prod_jig_validation_report_id FOREIGN KEY (fk_eqms_pre_prod_jig_validation_report_id) REFERENCES pre_production.eqms_pre_prod_jig_validation_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_jig_validation_results
    ADD CONSTRAINT fk_eppjvres_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_jig_validation_results
    ADD CONSTRAINT fk_eppjvres_pre_prod_jig_fixture_acceptance_criteria_id FOREIGN KEY (fk_eqms_pre_prod_jig_fixture_acceptance_criteria_id) REFERENCES pre_production.eqms_pre_prod_jig_fixture_acceptance_criteria(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_jig_validation_results
    ADD CONSTRAINT fk_eppjvres_pre_prod_jig_validation_report_id FOREIGN KEY (fk_eqms_pre_prod_jig_validation_report_id) REFERENCES pre_production.eqms_pre_prod_jig_validation_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_jig_validation_results
    ADD CONSTRAINT fk_eppjvres_verification_result_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_verification_result_lk_id) REFERENCES organization.eqms_verification_result_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

