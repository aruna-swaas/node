ALTER TABLE ONLY dnd.eqms_dig_specification
    ADD CONSTRAINT fk_eds_project_design_input_gathering_id FOREIGN KEY (fk_eqms_project_design_input_gathering_id) REFERENCES dnd.eqms_project_design_input_gathering(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_dig_models
    ADD CONSTRAINT fk_epdm_project_design_input_gathering_id FOREIGN KEY (fk_eqms_project_design_input_gathering_id) REFERENCES dnd.eqms_project_design_input_gathering(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

