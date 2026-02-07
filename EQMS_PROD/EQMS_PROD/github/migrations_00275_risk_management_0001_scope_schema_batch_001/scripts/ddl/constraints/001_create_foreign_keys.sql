ALTER TABLE ONLY risk_management.eqms_risk
    ADD CONSTRAINT eqms_risk_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, risk_code);

ALTER TABLE ONLY risk_management.eqms_risk
    ADD CONSTRAINT fk_er_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk
    ADD CONSTRAINT fk_er_risk_identification_method_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_risk_identification_method_lk_id) REFERENCES organization.eqms_risk_identification_method_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_management_plan
    ADD CONSTRAINT fk_ermp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_management_plan
    ADD CONSTRAINT fk_ermp_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_menu_stage_review
    ADD CONSTRAINT fk_ermsr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_applicable_stage
    ADD CONSTRAINT fk_eras_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_applicable_stage
    ADD CONSTRAINT fk_eras_rmp_applicable_stage_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_rmp_applicable_stage_lk_id) REFERENCES organization.eqms_rmp_applicable_stage_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_applicable_stage
    ADD CONSTRAINT fk_eras_risk_management_plan_id FOREIGN KEY (fk_eqms_risk_management_plan_id) REFERENCES risk_management.eqms_risk_management_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_intended_device_user_profile
    ADD CONSTRAINT fk_eridup_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_intended_device_user_profile
    ADD CONSTRAINT fk_eridup_user_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_user_type_lk_id) REFERENCES organization.eqms_rmp_user_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_intended_device_user_profile
    ADD CONSTRAINT fk_eridup_risk_management_plan_id FOREIGN KEY (fk_eqms_risk_management_plan_id) REFERENCES risk_management.eqms_risk_management_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_patient_anatomical_scope
    ADD CONSTRAINT fk_erpas_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_patient_anatomical_scope
    ADD CONSTRAINT fk_erpas_risk_management_plan_id FOREIGN KEY (fk_eqms_risk_management_plan_id) REFERENCES risk_management.eqms_risk_management_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_patient_population
    ADD CONSTRAINT fk_erpp_gender_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_gender_lk_id) REFERENCES organization.eqms_gender_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_patient_population
    ADD CONSTRAINT fk_erpp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_patient_population
    ADD CONSTRAINT fk_erpp_risk_management_plan_id FOREIGN KEY (fk_eqms_risk_management_plan_id) REFERENCES risk_management.eqms_risk_management_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

