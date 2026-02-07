ALTER TABLE ONLY hrcs.eqms_hr_role_definition
    ADD CONSTRAINT unique_tnt_org_role_lk UNIQUE (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_roles_lk_id);

ALTER TABLE ONLY hrcs.eqms_hr_role_definition
    ADD CONSTRAINT fk_ehcs_organization_department_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_department_id) REFERENCES organization.eqms_organization_department(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_role_definition
    ADD CONSTRAINT fk_ehcs_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_role_definition
    ADD CONSTRAINT fk_ehcs_reports_to_role_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_reports_to_role_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_role_definition
    ADD CONSTRAINT fk_ehcs_roles_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_roles_lk_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_role_definition_skill_level_mapper
    ADD CONSTRAINT fk_ehcslm_hr_skill_level_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_hr_skill_level_lk_id) REFERENCES organization.eqms_hr_skill_level_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_role_definition_skill_level_mapper
    ADD CONSTRAINT fk_ehcslm_hr_skill_master_id FOREIGN KEY (fk_eqms_hr_skill_master_id) REFERENCES hrcs.eqms_hr_skill_master(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_role_definition_skill_level_mapper
    ADD CONSTRAINT fk_ehcslm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_role_definition_skill_level_mapper
    ADD CONSTRAINT fk_ehcslm_hr_competency_skill_id FOREIGN KEY (fk_eqms_hr_role_definition_id) REFERENCES hrcs.eqms_hr_role_definition(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

