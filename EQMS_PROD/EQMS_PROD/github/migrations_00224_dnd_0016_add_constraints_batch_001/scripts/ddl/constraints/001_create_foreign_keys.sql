ALTER TABLE ONLY dnd.eqms_design_input_requirement
    ADD CONSTRAINT fk_edir_project_quality_plan_id FOREIGN KEY (fk_eqms_project_quality_plan_id) REFERENCES dnd.eqms_project_quality_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

