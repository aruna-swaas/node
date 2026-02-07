ALTER TABLE ONLY organization.eqms_image
    ADD CONSTRAINT fk_ei_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_form_draft_supporting_files
    ADD CONSTRAINT fk_efdsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

