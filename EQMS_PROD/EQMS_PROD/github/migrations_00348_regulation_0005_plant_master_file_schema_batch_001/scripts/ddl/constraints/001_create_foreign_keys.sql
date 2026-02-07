ALTER TABLE ONLY regulation.eqms_reg_department_user_count
    ADD CONSTRAINT fk_erduc_organization_department_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_department_id) REFERENCES organization.eqms_organization_department(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_department_user_count
    ADD CONSTRAINT fk_erduc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_plant_master_file
    ADD CONSTRAINT fk_erpmf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_plant_master_file
    ADD CONSTRAINT fk_erpmf_organization_site_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_site_id) REFERENCES organization.eqms_organization_site(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_contract_activities
    ADD CONSTRAINT fk_erpca_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_contract_activities
    ADD CONSTRAINT fk_erpca_reg_plant_master_file_id FOREIGN KEY (fk_eqms_reg_plant_master_file_id) REFERENCES regulation.eqms_reg_plant_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_documentation
    ADD CONSTRAINT fk_erpd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_documentation
    ADD CONSTRAINT fk_erpd_reg_plant_master_file_id FOREIGN KEY (fk_eqms_reg_plant_master_file_id) REFERENCES regulation.eqms_reg_plant_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_equipment
    ADD CONSTRAINT fk_erpe_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_equipment
    ADD CONSTRAINT fk_erpe_reg_plant_master_file_id FOREIGN KEY (fk_eqms_reg_plant_master_file_id) REFERENCES regulation.eqms_reg_plant_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_facility_premises
    ADD CONSTRAINT fk_erpfp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_facility_premises
    ADD CONSTRAINT fk_erpfp_reg_plant_master_file_id FOREIGN KEY (fk_eqms_reg_plant_master_file_id) REFERENCES regulation.eqms_reg_plant_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_general_information
    ADD CONSTRAINT fk_erpfig_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_general_information
    ADD CONSTRAINT fk_erpfig_reg_plant_master_file_id FOREIGN KEY (fk_eqms_reg_plant_master_file_id) REFERENCES regulation.eqms_reg_plant_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_department_user_count
    ADD CONSTRAINT fk_erduc_reg_pmf_general_information_id FOREIGN KEY (fk_eqms_reg_pmf_general_information_id) REFERENCES regulation.eqms_reg_pmf_general_information(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_handling_complaints
    ADD CONSTRAINT fk_erphc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_handling_complaints
    ADD CONSTRAINT fk_erphc_reg_plant_master_file_id FOREIGN KEY (fk_eqms_reg_plant_master_file_id) REFERENCES regulation.eqms_reg_plant_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_internal_audit
    ADD CONSTRAINT fk_erpia_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_internal_audit
    ADD CONSTRAINT fk_erpia_reg_plant_master_file_id FOREIGN KEY (fk_eqms_reg_plant_master_file_id) REFERENCES regulation.eqms_reg_plant_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_personnel
    ADD CONSTRAINT fk_erpp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_personnel
    ADD CONSTRAINT fk_erpp_reg_plant_master_file_id FOREIGN KEY (fk_eqms_reg_plant_master_file_id) REFERENCES regulation.eqms_reg_plant_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_production
    ADD CONSTRAINT fk_erpp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_production
    ADD CONSTRAINT fk_erpp_reg_plant_master_file_id FOREIGN KEY (fk_eqms_reg_plant_master_file_id) REFERENCES regulation.eqms_reg_plant_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_quality_assurance
    ADD CONSTRAINT fk_erpqa_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_quality_assurance
    ADD CONSTRAINT fk_erpqa_reg_plant_master_file_id FOREIGN KEY (fk_eqms_reg_plant_master_file_id) REFERENCES regulation.eqms_reg_plant_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_sanitation
    ADD CONSTRAINT fk_erps_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_sanitation
    ADD CONSTRAINT fk_erps_reg_plant_master_file_id FOREIGN KEY (fk_eqms_reg_plant_master_file_id) REFERENCES regulation.eqms_reg_plant_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_storage
    ADD CONSTRAINT fk_erps_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_pmf_storage
    ADD CONSTRAINT fk_erps_reg_plant_master_file_id FOREIGN KEY (fk_eqms_reg_plant_master_file_id) REFERENCES regulation.eqms_reg_plant_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

