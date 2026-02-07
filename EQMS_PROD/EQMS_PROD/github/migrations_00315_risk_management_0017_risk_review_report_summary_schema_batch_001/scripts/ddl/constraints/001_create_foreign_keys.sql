ALTER TABLE ONLY risk_management.eqms_risk_review_report_summary
    ADD CONSTRAINT fk_errrs_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_review_report_summary
    ADD CONSTRAINT fk_errrs_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_review_report_summary
    ADD CONSTRAINT fk_errrs_selection_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_selection_lk_id) REFERENCES organization.eqms_selection_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_review_report_summary
    ADD CONSTRAINT fk_errrs_value_acceptability_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_value_acceptability_lk_id) REFERENCES organization.eqms_value_acceptability_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_review_report_summary_supporting_files
    ADD CONSTRAINT fk_errrsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_review_report_summary_supporting_files
    ADD CONSTRAINT fk_errrsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_review_report_summary_supporting_files
    ADD CONSTRAINT fk_errrsf_risk_review_report_summary_id FOREIGN KEY (fk_eqms_risk_review_report_summary_id) REFERENCES risk_management.eqms_risk_review_report_summary(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

