ALTER TABLE ONLY dnd.eqms_market_research_study_supporting_files
    ADD CONSTRAINT fk_emrssf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_market_research_study_supporting_files
    ADD CONSTRAINT fk_emrssf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_market_research_study
    ADD CONSTRAINT fk_epmrs_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_market_research_study
    ADD CONSTRAINT fk_eqms_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_market_research_study_supporting_files
    ADD CONSTRAINT fk_emrssf_project_market_research_study_id FOREIGN KEY (fk_eqms_project_market_research_study_id) REFERENCES dnd.eqms_project_market_research_study(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

