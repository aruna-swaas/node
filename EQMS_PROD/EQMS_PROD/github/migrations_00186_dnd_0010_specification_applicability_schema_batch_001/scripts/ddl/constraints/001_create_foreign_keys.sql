ALTER TABLE ONLY dnd.eqms_project_applicable_specification
    ADD CONSTRAINT fk_epas_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_applicable_specification
    ADD CONSTRAINT fk_epas_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_applicable_specification
    ADD CONSTRAINT fk_eqms_design_specification_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_design_specification_type_lk_id) REFERENCES organization.eqms_design_specification_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

