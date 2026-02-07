ALTER TABLE ONLY pre_production.eqms_pre_prod_jig_fixture_acceptance_criteria
    ADD CONSTRAINT fk_eppjfac_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_jig_fixture_acceptance_criteria
    ADD CONSTRAINT fk_eppjfac_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_jig_fixture_validation
    ADD CONSTRAINT fk_eppjfv_jig_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_jig_lk_id) REFERENCES organization.eqms_jig_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_jig_fixture_validation
    ADD CONSTRAINT fk_eppjfv_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_jig_fixture_validation
    ADD CONSTRAINT fk_eppjfv_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_jig_fixture_acceptance_criteria
    ADD CONSTRAINT fk_eppjfac_pre_prod_jig_fixture_validation_id FOREIGN KEY (fk_eqms_pre_prod_jig_fixture_validation_id) REFERENCES pre_production.eqms_pre_prod_jig_fixture_validation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_jig_validation_report
    ADD CONSTRAINT fk_eppjvr_jig_item_id FOREIGN KEY (fk_eqms_jig_item_id) REFERENCES organization.eqms_jig_item(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_jig_validation_report
    ADD CONSTRAINT fk_eppjvr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_project_jig_validation_report
    ADD CONSTRAINT fk_epppjvr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_project_jig_validation_report
    ADD CONSTRAINT fk_epppjvr_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_project_jig_validation_report
    ADD CONSTRAINT fk_epppjvr_jig_validation_report_id FOREIGN KEY (fk_eqms_pre_prod_jig_validation_report_id) REFERENCES pre_production.eqms_pre_prod_jig_validation_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

