ALTER TABLE ONLY dnd.eqms_conflicting_dir
    ADD CONSTRAINT fk_ecd_design_input_requirement_id FOREIGN KEY (fk_eqms_design_input_requirement_id) REFERENCES dnd.eqms_design_input_requirement(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_conflicting_dir
    ADD CONSTRAINT fk_edd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dir_adequacy_report
    ADD CONSTRAINT fk_edar_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dir_adequacy_report
    ADD CONSTRAINT fk_edar_project_applicable_specification_id FOREIGN KEY (fk_eqms_project_applicable_specification_id) REFERENCES dnd.eqms_project_applicable_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dir_declaration
    ADD CONSTRAINT fk_edd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dir_declaration
    ADD CONSTRAINT fk_eqms_dir_adequacy_report_id FOREIGN KEY (fk_eqms_dir_adequacy_report_id) REFERENCES dnd.eqms_dir_adequacy_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_conflicting_dir
    ADD CONSTRAINT fk_ecd_dir_declaration_id FOREIGN KEY (fk_eqms_dir_declaration_id) REFERENCES dnd.eqms_dir_declaration(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

