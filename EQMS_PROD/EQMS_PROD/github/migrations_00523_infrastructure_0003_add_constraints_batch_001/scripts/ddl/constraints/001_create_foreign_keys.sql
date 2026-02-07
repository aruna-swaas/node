ALTER TABLE ONLY infrastructure.eqms_infrastructure_doc_supporting_files
    ADD CONSTRAINT fk_ei_infrastructure_id FOREIGN KEY (fk_eqms_infrastructure_id) REFERENCES infrastructure.eqms_infrastructure(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_image_supporting_files
    ADD CONSTRAINT fk_ei_infrastructure_id FOREIGN KEY (fk_eqms_infrastructure_id) REFERENCES infrastructure.eqms_infrastructure(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_installation_report
    ADD CONSTRAINT fk_ei_infrastructure_id FOREIGN KEY (fk_eqms_infrastructure_id) REFERENCES infrastructure.eqms_infrastructure(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

