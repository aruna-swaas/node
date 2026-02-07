ALTER TABLE ONLY dnd.eqms_design_input_gathering
    ADD CONSTRAINT fk_edig_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_input_gathering
    ADD CONSTRAINT fk_edig_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_indication_of_use
    ADD CONSTRAINT fk_edio_dig_specification_id FOREIGN KEY (fk_eqms_dig_specification_id) REFERENCES dnd.eqms_dig_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_indication_of_use
    ADD CONSTRAINT fk_edio_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_indication_of_use
    ADD CONSTRAINT fk_edio_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_intended_population
    ADD CONSTRAINT fk_edip_dig_specification_id FOREIGN KEY (fk_eqms_dig_specification_id) REFERENCES dnd.eqms_dig_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_intended_population
    ADD CONSTRAINT fk_edip_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_intended_population
    ADD CONSTRAINT fk_edip_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_intended_users
    ADD CONSTRAINT fk_ediu_dig_specification_id FOREIGN KEY (fk_eqms_dig_specification_id) REFERENCES dnd.eqms_dig_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_intended_users
    ADD CONSTRAINT fk_ediu_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_intended_users
    ADD CONSTRAINT fk_ediu_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_use_environments
    ADD CONSTRAINT fk_edue_dig_specification_id FOREIGN KEY (fk_eqms_dig_specification_id) REFERENCES dnd.eqms_dig_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_use_environments
    ADD CONSTRAINT fk_edue_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_use_environments
    ADD CONSTRAINT fk_edue_use_environment_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_use_environment_lk_id) REFERENCES organization.eqms_use_environment_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_design_input_gathering
    ADD CONSTRAINT fk_epdig_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_design_input_gathering
    ADD CONSTRAINT fk_epdig_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_indication_of_use
    ADD CONSTRAINT fk_edio_project_design_input_gathering_id FOREIGN KEY (fk_eqms_project_design_input_gathering_id) REFERENCES dnd.eqms_project_design_input_gathering(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_intended_population
    ADD CONSTRAINT fk_edip_project_design_input_gathering_id FOREIGN KEY (fk_eqms_project_design_input_gathering_id) REFERENCES dnd.eqms_project_design_input_gathering(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_intended_users
    ADD CONSTRAINT fk_ediu_project_design_input_gathering_id FOREIGN KEY (fk_eqms_project_design_input_gathering_id) REFERENCES dnd.eqms_project_design_input_gathering(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_use_environments
    ADD CONSTRAINT fk_edue_project_design_input_gathering_id FOREIGN KEY (fk_eqms_project_design_input_gathering_id) REFERENCES dnd.eqms_project_design_input_gathering(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

