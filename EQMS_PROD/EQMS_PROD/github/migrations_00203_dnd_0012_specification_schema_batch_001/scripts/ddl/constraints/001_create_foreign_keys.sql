ALTER TABLE ONLY dnd.eqms_device_lk
    ADD CONSTRAINT fk_edl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_device_lk
    ADD CONSTRAINT fk_edl_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_specification
    ADD CONSTRAINT fk_edg_usability_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_usability_type_id) REFERENCES organization.eqms_usability_type(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_specification
    ADD CONSTRAINT fk_eds_alarm_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_alarm_type_id) REFERENCES organization.eqms_alarm_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_specification
    ADD CONSTRAINT fk_eesvp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_specification
    ADD CONSTRAINT fk_eqms_labelling_packaging_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_labelling_packaging_type_lk_id) REFERENCES organization.eqms_labelling_packaging_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_specification
    ADD CONSTRAINT fk_eqms_project_specification_applicability_id FOREIGN KEY (fk_eqms_project_applicable_specification_id) REFERENCES dnd.eqms_project_applicable_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_specification
    ADD CONSTRAINT fk_eqms_device_lk_id FOREIGN KEY (fk_eqms_device_lk_id) REFERENCES dnd.eqms_device_lk(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_specification_country_mapper
    ADD CONSTRAINT fk_edscm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_specification_country_mapper
    ADD CONSTRAINT fk_edscm_reg_country_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_reg_country_lk_id) REFERENCES organization.eqms_reg_country_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_specification_country_mapper
    ADD CONSTRAINT fk_edscm_dig_specification_id FOREIGN KEY (fk_eqms_dig_specification_id) REFERENCES dnd.eqms_dig_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_specification_functional_block_mapper
    ADD CONSTRAINT fk_edsfbm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_specification_functional_block_mapper
    ADD CONSTRAINT fk_edsfbm_product_functional_block_id FOREIGN KEY (fk_eqms_product_functional_block_id) REFERENCES dnd.eqms_product_functional_blocks(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_specification_functional_block_mapper
    ADD CONSTRAINT fk_edsfbm_dig_specification_id FOREIGN KEY (fk_eqms_dig_specification_id) REFERENCES dnd.eqms_dig_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_specification_mapper
    ADD CONSTRAINT fk_edsm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_specification_mapper
    ADD CONSTRAINT fk_edsm_functional_specification_id FOREIGN KEY (fk_eqms_target_specification_id) REFERENCES dnd.eqms_dig_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_specification_mapper
    ADD CONSTRAINT fk_edsm_performance_specification_id FOREIGN KEY (fk_eqms_source_specification_id) REFERENCES dnd.eqms_dig_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_specification_model_mapper
    ADD CONSTRAINT fk_edsmm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_specification_model_mapper
    ADD CONSTRAINT fk_edsmm_project_product_variants_id FOREIGN KEY (fk_eqms_project_product_variants_id) REFERENCES dnd.eqms_project_product_variants(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dig_specification_model_mapper
    ADD CONSTRAINT fk_edsmm_dig_specification_id FOREIGN KEY (fk_eqms_dig_specification_id) REFERENCES dnd.eqms_dig_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_organization_product_role
    ADD CONSTRAINT fk_eopr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_organization_product_role
    ADD CONSTRAINT fk_eopr_organization_product_id FOREIGN KEY (fk_eqms_organization_product_id) REFERENCES organization.eqms_organization_product(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_organization_product_role
    ADD CONSTRAINT fk_eopr_organization_role_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_role_lk_id) REFERENCES organization.eqms_organization_role_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_perfomance_specification
    ADD CONSTRAINT fk_eps_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_dig_models
    ADD CONSTRAINT fk_epdm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_dig_models
    ADD CONSTRAINT fk_epdm_project_product_variants_id FOREIGN KEY (fk_eqms_project_product_variants_id) REFERENCES dnd.eqms_project_product_variants(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

