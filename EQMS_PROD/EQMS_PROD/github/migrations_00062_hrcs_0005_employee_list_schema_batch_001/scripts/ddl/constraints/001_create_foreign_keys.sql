ALTER TABLE ONLY hrcs.eqms_organization_employee
    ADD CONSTRAINT eoe_unique_tenant_org_emp_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, encrypted_employee_id);

ALTER TABLE ONLY hrcs.eqms_hr_add_employee_training_needs
    ADD CONSTRAINT fk_ehaetn_hr_employee_source_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_hr_employee_source_lk_id) REFERENCES organization.eqms_hr_employee_source_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_add_employee_training_needs
    ADD CONSTRAINT fk_ehaetn_hr_skill_master_id FOREIGN KEY (fk_eqms_hr_skill_master_id) REFERENCES hrcs.eqms_hr_skill_master(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_add_employee_training_needs
    ADD CONSTRAINT fk_ehaetn_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_add_employee_training_supporting_document
    ADD CONSTRAINT fk_ehaetsd_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_add_employee_training_supporting_document
    ADD CONSTRAINT fk_ehaetsd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_administrative_reports
    ADD CONSTRAINT fk_ehear_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_administrative_reports
    ADD CONSTRAINT fk_ehear_organization_site_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_site_id) REFERENCES organization.eqms_organization_site(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_area_expertise_supporting_document
    ADD CONSTRAINT fk_eheaesd_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_area_expertise_supporting_document
    ADD CONSTRAINT fk_eheaesd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_edu_qual_supporting_document
    ADD CONSTRAINT fk_eheeqsd_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_edu_qual_supporting_document
    ADD CONSTRAINT fk_eheeqsd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_experience_supporting_document
    ADD CONSTRAINT fk_eheesd_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_experience_supporting_document
    ADD CONSTRAINT fk_eheesd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_functional_reports
    ADD CONSTRAINT fk_ehefr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_skill_set
    ADD CONSTRAINT fk_ehess_hr_competency_skill_level_mapper_id FOREIGN KEY (fk_eqms_hr_role_definition_skill_level_mapper_id) REFERENCES hrcs.eqms_hr_role_definition_skill_level_mapper(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_skill_set
    ADD CONSTRAINT fk_ehess_hr_skill_level_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_hr_skill_level_lk_id) REFERENCES organization.eqms_hr_skill_level_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_skill_set
    ADD CONSTRAINT fk_ehess_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_skill_supporting_document
    ADD CONSTRAINT fk_ehessd_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_skill_supporting_document
    ADD CONSTRAINT fk_ehessd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_training_evaluation
    ADD CONSTRAINT fk_ehete_hr_acquired_skill_level_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_hr_acquired_skill_level_id) REFERENCES organization.eqms_hr_skill_level_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_training_evaluation
    ADD CONSTRAINT fk_ehete_hr_skill_level_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_hr_required_skill_level_id) REFERENCES organization.eqms_hr_skill_level_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_training_evaluation
    ADD CONSTRAINT fk_ehete_hr_skill_master_id FOREIGN KEY (fk_eqms_hr_skill_master_id) REFERENCES hrcs.eqms_hr_skill_master(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_training_evaluation
    ADD CONSTRAINT fk_ehete_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_training_evaluation_supporting_files
    ADD CONSTRAINT fk_ehetesf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_training_evaluation_supporting_files
    ADD CONSTRAINT fk_ehetesf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_training_evaluation_supporting_files
    ADD CONSTRAINT fk_ehetesf_hr_employee_training_evaluation_id FOREIGN KEY (fk_eqms_hr_employee_training_evaluation_id) REFERENCES hrcs.eqms_hr_employee_training_evaluation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_training_needs
    ADD CONSTRAINT fk_ehetn_hr_employee_source_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_hr_employee_source_lk_id) REFERENCES organization.eqms_hr_employee_source_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_training_needs
    ADD CONSTRAINT fk_ehetn_hr_skill_master_id FOREIGN KEY (fk_eqms_hr_skill_master_id) REFERENCES hrcs.eqms_hr_skill_master(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_training_needs
    ADD CONSTRAINT fk_ehetn_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_training_needs
    ADD CONSTRAINT fk_ehetn_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_training_needs_mapper
    ADD CONSTRAINT fk_ehetnm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_training_needs_mapper
    ADD CONSTRAINT fk_ehetnm_hr_employee_training_needs_id FOREIGN KEY (fk_eqms_hr_employee_training_needs_id) REFERENCES hrcs.eqms_hr_employee_training_needs(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_training_supporting_document
    ADD CONSTRAINT fk_ehetsd_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_training_supporting_document
    ADD CONSTRAINT fk_ehetsd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_training_supporting_document
    ADD CONSTRAINT fk_ehetsd_hr_employee_training_needs_id FOREIGN KEY (fk_eqms_hr_employee_training_needs_id) REFERENCES hrcs.eqms_hr_employee_training_needs(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_organization_employee
    ADD CONSTRAINT fk_eoe_designation_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_designation_lk_id) REFERENCES organization.eqms_designation_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_organization_employee
    ADD CONSTRAINT fk_eoe_employee_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_employee_status_lk_id) REFERENCES organization.eqms_employee_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_organization_employee
    ADD CONSTRAINT fk_eoe_hr_candidate_evalution_id FOREIGN KEY (fk_eqms_hr_candidate_evalution_id) REFERENCES hrcs.eqms_hr_candidate_evalution(id);

ALTER TABLE ONLY hrcs.eqms_organization_employee
    ADD CONSTRAINT fk_eoe_hr_employment_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_hr_employment_type_lk_id) REFERENCES organization.eqms_hr_employment_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_organization_employee
    ADD CONSTRAINT fk_eoe_hr_recruitment_details_id FOREIGN KEY (fk_eqms_hr_resource_requisition_id) REFERENCES hrcs.eqms_hr_resource_requisition(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_organization_employee
    ADD CONSTRAINT fk_eoe_organization_department_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_department_id) REFERENCES organization.eqms_organization_department(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_organization_employee
    ADD CONSTRAINT fk_eoe_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_organization_employee
    ADD CONSTRAINT fk_eoe_role_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_role_lk_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_organization_employee
    ADD CONSTRAINT fk_eoe_signature_image_id FOREIGN KEY (fk_eqms_signature_image_id) REFERENCES organization.eqms_image(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_add_employee_training_needs
    ADD CONSTRAINT fk_ehaetn_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_add_employee_training_supporting_document
    ADD CONSTRAINT fk_ehaetsd_hr_add_employee_training_needs_id FOREIGN KEY (fk_eqms_hr_add_employee_training_needs_id) REFERENCES hrcs.eqms_hr_add_employee_training_needs(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_administrative_reports
    ADD CONSTRAINT fk_administrative_reports_employee_id FOREIGN KEY (fk_administrative_reports_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_administrative_reports
    ADD CONSTRAINT fk_ehear_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_area_expertise_supporting_document
    ADD CONSTRAINT fk_eheaesd_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_edu_qual_supporting_document
    ADD CONSTRAINT fk_eheeqsd_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_experience_supporting_document
    ADD CONSTRAINT fk_eheesd_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_functional_reports
    ADD CONSTRAINT fk_ehefr_functional_reports_to_employee_id FOREIGN KEY (fk_eqms_functional_reports_to_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_functional_reports
    ADD CONSTRAINT fk_ehefr_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_skill_set
    ADD CONSTRAINT fk_ehess_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_skill_supporting_document
    ADD CONSTRAINT fk_ehessd_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_employee_training_needs_mapper
    ADD CONSTRAINT fk_ehetnm_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_organization_employee_supporting_document
    ADD CONSTRAINT fk_eoesd_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_organization_employee_supporting_document
    ADD CONSTRAINT fk_eoesd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_organization_employee_supporting_document
    ADD CONSTRAINT fk_eoesd_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

