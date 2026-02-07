ALTER TABLE ONLY hrcs.eqms_hr_candidate_evalution
    ADD CONSTRAINT fk_ehce_hr_competency_skill_id FOREIGN KEY (fk_eqms_hr_role_definition_id) REFERENCES hrcs.eqms_hr_role_definition(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_candidate_evalution
    ADD CONSTRAINT fk_ehce_hr_evalution_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_hr_evalution_status_lk_id) REFERENCES organization.eqms_hr_evalution_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_candidate_evalution
    ADD CONSTRAINT fk_ehce_hr_recruitment_details_id FOREIGN KEY (fk_eqms_hr_resource_requisition_id) REFERENCES hrcs.eqms_hr_resource_requisition(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_candidate_evalution
    ADD CONSTRAINT fk_ehce_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_candidate_evalution_skill_set
    ADD CONSTRAINT fk_ehcess_hr_competency_skill_level_mapper_id FOREIGN KEY (fk_eqms_hr_role_definition_skill_level_mapper_id) REFERENCES hrcs.eqms_hr_role_definition_skill_level_mapper(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_candidate_evalution_skill_set
    ADD CONSTRAINT fk_ehcess_hr_skill_level_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_hr_skill_level_lk_id) REFERENCES organization.eqms_hr_skill_level_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_candidate_evalution_skill_set
    ADD CONSTRAINT fk_ehcess_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_candidate_evalution_skill_set
    ADD CONSTRAINT fk_ehcess_hr_candidate_evalution_id FOREIGN KEY (fk_eqms_hr_candidate_evalution_id) REFERENCES hrcs.eqms_hr_candidate_evalution(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_candidate_evalution_supporting_files
    ADD CONSTRAINT fk_ehcesf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_candidate_evalution_supporting_files
    ADD CONSTRAINT fk_ehcesf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_candidate_evalution_supporting_files
    ADD CONSTRAINT fk_ehcesf_hr_candidate_evalution_id FOREIGN KEY (fk_eqms_hr_candidate_evalution_id) REFERENCES hrcs.eqms_hr_candidate_evalution(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_candidate_interviewer
    ADD CONSTRAINT fk_ehcev_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_candidate_interviewer
    ADD CONSTRAINT fk_ehcev_hr_candidate_evalution_id FOREIGN KEY (fk_eqms_hr_candidate_evalution_id) REFERENCES hrcs.eqms_hr_candidate_evalution(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

