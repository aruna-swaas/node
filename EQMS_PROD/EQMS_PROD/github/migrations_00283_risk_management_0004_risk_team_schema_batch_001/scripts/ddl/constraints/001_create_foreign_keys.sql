ALTER TABLE ONLY risk_management.eqms_rmp_team_member
    ADD CONSTRAINT fk_ertm_hr_skill_master_id FOREIGN KEY (fk_eqms_hr_skill_master_id) REFERENCES hrcs.eqms_hr_skill_master(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_team_member
    ADD CONSTRAINT fk_ertm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_team_structure_mapper
    ADD CONSTRAINT fk_ertsm_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_team_structure_mapper
    ADD CONSTRAINT fk_ertsm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_team_structure_mapper
    ADD CONSTRAINT fk_ertsm_risk_management_plan_id FOREIGN KEY (fk_eqms_risk_management_plan_id) REFERENCES risk_management.eqms_risk_management_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_team_structure_mapper
    ADD CONSTRAINT fk_ertsm_rmp_applicable_stage_id FOREIGN KEY (fk_eqms_rmp_applicable_stage_id) REFERENCES risk_management.eqms_rmp_applicable_stage(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_team_structure_mapper
    ADD CONSTRAINT fk_ertsm_rmp_responsibility_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_rmp_responsibility_lk_id) REFERENCES organization.eqms_rmp_responsibility_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_team_structure_mapper
    ADD CONSTRAINT fk_ertsm_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_team_member
    ADD CONSTRAINT fk_ertm_rmp_team_structure_mapper_id FOREIGN KEY (fk_eqms_rmp_team_structure_mapper_id) REFERENCES risk_management.eqms_rmp_team_structure_mapper(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

