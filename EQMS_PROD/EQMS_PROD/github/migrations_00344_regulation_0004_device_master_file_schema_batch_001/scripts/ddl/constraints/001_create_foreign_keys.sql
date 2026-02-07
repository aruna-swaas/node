ALTER TABLE ONLY regulation.eqms_reg_aspects_predicate_device
    ADD CONSTRAINT fk_erapd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_aspects_predicate_device
    ADD CONSTRAINT fk_erapd_reg_device_product_specification_aspects_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_reg_device_product_specification_aspects_id) REFERENCES organization.eqms_reg_device_product_specification_aspects(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_biocompatible_test_results
    ADD CONSTRAINT fk_erbtr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_device_master_file
    ADD CONSTRAINT fk_erdmf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_device_master_file
    ADD CONSTRAINT fk_erdmf_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_device_product_specification
    ADD CONSTRAINT fk_erddps_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_device_product_specification
    ADD CONSTRAINT fk_erddps_reg_device_master_file_id FOREIGN KEY (fk_eqms_reg_device_master_file_id) REFERENCES regulation.eqms_reg_device_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_aspects_predicate_device
    ADD CONSTRAINT fk_erapd_reg_device_product_specification_id FOREIGN KEY (fk_eqms_reg_device_product_specification_id) REFERENCES regulation.eqms_reg_device_product_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_device_verification_validation
    ADD CONSTRAINT fk_erddv_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_device_verification_validation
    ADD CONSTRAINT fk_erddv_reg_device_master_file_id FOREIGN KEY (fk_eqms_reg_device_master_file_id) REFERENCES regulation.eqms_reg_device_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_biocompatible_test_results
    ADD CONSTRAINT fk_erbtr_reg_device_verification_validation_id FOREIGN KEY (fk_eqms_reg_device_verification_validation_id) REFERENCES regulation.eqms_reg_device_verification_validation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_dmf_design_manufacturing_information
    ADD CONSTRAINT fk_erdmfi_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_dmf_design_manufacturing_information
    ADD CONSTRAINT fk_erdmfi_reg_device_master_file_id FOREIGN KEY (fk_eqms_reg_device_master_file_id) REFERENCES regulation.eqms_reg_device_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_dmf_essential_principles_checklist
    ADD CONSTRAINT fk_erdepc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_dmf_essential_principles_checklist
    ADD CONSTRAINT fk_erdepc_reg_device_master_file_id FOREIGN KEY (fk_eqms_reg_device_master_file_id) REFERENCES regulation.eqms_reg_device_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_dmf_executive_summary
    ADD CONSTRAINT fk_erdes_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_dmf_executive_summary
    ADD CONSTRAINT fk_erdes_reg_device_master_file_id FOREIGN KEY (fk_eqms_reg_device_master_file_id) REFERENCES regulation.eqms_reg_device_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_dmf_labelling
    ADD CONSTRAINT fk_erdl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_dmf_labelling
    ADD CONSTRAINT fk_erdl_reg_device_master_file_id FOREIGN KEY (fk_eqms_reg_device_master_file_id) REFERENCES regulation.eqms_reg_device_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_dmf_risk_control_summary
    ADD CONSTRAINT fk_erdmrs_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_dmf_risk_control_summary
    ADD CONSTRAINT fk_erdmrs_reg_device_master_file_id FOREIGN KEY (fk_eqms_reg_device_master_file_id) REFERENCES regulation.eqms_reg_device_master_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_field_safety_corrective_action
    ADD CONSTRAINT fk_efsca_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_field_safety_corrective_action
    ADD CONSTRAINT fk_efsca_reg_dmf_executive_summary_id FOREIGN KEY (fk_eqms_reg_dmf_executive_summary_id) REFERENCES regulation.eqms_reg_dmf_executive_summary(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_field_safety_country_mapping
    ADD CONSTRAINT fk_erfcm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_field_safety_country_mapping
    ADD CONSTRAINT fk_erfcm_reg_country_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_reg_country_lk_id) REFERENCES organization.eqms_reg_country_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_field_safety_country_mapping
    ADD CONSTRAINT fk_erfcm_reg_field_safety_corrective_action_id FOREIGN KEY (fk_eqms_reg_field_safety_corrective_action_id) REFERENCES regulation.eqms_reg_field_safety_corrective_action(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_market_clearance
    ADD CONSTRAINT fk_ermc_reg_regulatory_agency_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_reg_regulatory_agency_lk_id) REFERENCES organization.eqms_reg_regulatory_agency_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_market_clearance
    ADD CONSTRAINT fk_erra_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_market_clearance
    ADD CONSTRAINT fk_ermc_reg_dmf_executive_summary_id FOREIGN KEY (fk_eqms_reg_dmf_executive_summary_id) REFERENCES regulation.eqms_reg_dmf_executive_summary(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_marketing_device_launch
    ADD CONSTRAINT fk_ermdl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_marketing_device_launch
    ADD CONSTRAINT fk_ermdl_reg_dmf_executive_summary_id FOREIGN KEY (fk_eqms_reg_dmf_executive_summary_id) REFERENCES regulation.eqms_reg_dmf_executive_summary(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_material_direct_contact
    ADD CONSTRAINT fk_ermdc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_material_direct_contact
    ADD CONSTRAINT fk_ermdc_reg_device_product_specification_id FOREIGN KEY (fk_eqms_reg_device_product_specification_id) REFERENCES regulation.eqms_reg_device_product_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_material_direct_contact_verification
    ADD CONSTRAINT fk_ermdcv_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_material_direct_contact_verification
    ADD CONSTRAINT fk_ermdcv_reg_device_verification_validation_id FOREIGN KEY (fk_eqms_reg_device_verification_validation_id) REFERENCES regulation.eqms_reg_device_verification_validation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_material_indirect_contact
    ADD CONSTRAINT fk_ermic_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_material_indirect_contact
    ADD CONSTRAINT fk_ermic_reg_device_product_specification_id FOREIGN KEY (fk_eqms_reg_device_product_specification_id) REFERENCES regulation.eqms_reg_device_product_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_material_indirect_contact_verification
    ADD CONSTRAINT fk_ermicv_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_material_indirect_contact_verification
    ADD CONSTRAINT fk_ermicv_reg_device_verification_validation_id FOREIGN KEY (fk_eqms_reg_device_verification_validation_id) REFERENCES regulation.eqms_reg_device_verification_validation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_regulatory_approvals
    ADD CONSTRAINT fk_erra_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_regulatory_approvals
    ADD CONSTRAINT fk_erra_reg_country_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_reg_country_lk_id) REFERENCES organization.eqms_reg_country_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_regulatory_approvals
    ADD CONSTRAINT fk_erra_reg_dmf_executive_summary_id FOREIGN KEY (fk_eqms_reg_dmf_executive_summary_id) REFERENCES regulation.eqms_reg_dmf_executive_summary(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_serious_adverse_event
    ADD CONSTRAINT fk_erasae_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_serious_adverse_event
    ADD CONSTRAINT fk_erasae_reg_dmf_executive_summary_id FOREIGN KEY (fk_eqms_reg_dmf_executive_summary_id) REFERENCES regulation.eqms_reg_dmf_executive_summary(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

