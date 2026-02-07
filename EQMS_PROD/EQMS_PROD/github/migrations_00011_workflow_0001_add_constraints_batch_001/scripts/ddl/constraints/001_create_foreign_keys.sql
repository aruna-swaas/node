ALTER TABLE ONLY organization.eqms_object_project_instance
    ADD CONSTRAINT fk_eopi_project_instance_id FOREIGN KEY (fk_eqms_project_instance_id) REFERENCES workflow.eqms_project_instance(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

