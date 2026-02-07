ALTER TABLE ONLY risk_management.eqms_rmp_production_post_production_info
    ADD CONSTRAINT fk_erpppi_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_production_post_production_info
    ADD CONSTRAINT fk_erpppi_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

