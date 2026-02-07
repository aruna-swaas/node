ALTER TABLE ONLY dnd.eqms_high_level_design
    ADD CONSTRAINT fk_ehld_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_high_level_design
    ADD CONSTRAINT fk_eqms_owner_id FOREIGN KEY (fk_eqms_owner_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_high_level_design
    ADD CONSTRAINT fk_eqms_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id);

ALTER TABLE ONLY dnd.eqms_high_level_design_comp_landscape
    ADD CONSTRAINT fk_ehldcl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_high_level_design_comp_landscape
    ADD CONSTRAINT fk_eqms_high_level_design_id FOREIGN KEY (fk_eqms_high_level_design_id) REFERENCES dnd.eqms_high_level_design(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_high_level_design_conversion_rate
    ADD CONSTRAINT fk_ehldcr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_high_level_design_conversion_rate
    ADD CONSTRAINT fk_eqms_high_level_design_id FOREIGN KEY (fk_eqms_high_level_design_id) REFERENCES dnd.eqms_high_level_design(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_high_level_design_documents
    ADD CONSTRAINT fk_ehldd_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id);

ALTER TABLE ONLY dnd.eqms_high_level_design_documents
    ADD CONSTRAINT fk_ehldd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_high_level_design_documents
    ADD CONSTRAINT fk_eqms_high_level_design_id FOREIGN KEY (fk_eqms_high_level_design_id) REFERENCES dnd.eqms_high_level_design(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_high_level_design_info
    ADD CONSTRAINT fk_ehldi_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_high_level_design_info
    ADD CONSTRAINT fk_eqms_high_level_design_id FOREIGN KEY (fk_eqms_high_level_design_id) REFERENCES dnd.eqms_high_level_design(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_high_level_design_market_demography
    ADD CONSTRAINT fk_ehldmd_market_demography_sub_category_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_market_demography_sub_category_lk_id) REFERENCES organization.eqms_market_demography_sub_category_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_high_level_design_market_demography
    ADD CONSTRAINT fk_ehldmd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_high_level_design_market_demography
    ADD CONSTRAINT fk_ehldmd_high_level_design_id FOREIGN KEY (fk_eqms_high_level_design_id) REFERENCES dnd.eqms_high_level_design(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_high_level_design_market_segment
    ADD CONSTRAINT fk_ehldms_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_high_level_design_market_segment
    ADD CONSTRAINT fk_eqms_market_segment_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_market_segment_lk_id) REFERENCES organization.eqms_market_segment_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_high_level_design_market_segment
    ADD CONSTRAINT fk_eqms_high_level_design_id FOREIGN KEY (fk_eqms_high_level_design_id) REFERENCES dnd.eqms_high_level_design(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_high_level_design_requirements
    ADD CONSTRAINT fk_ehldr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_high_level_design_requirements
    ADD CONSTRAINT fk_eqms_high_level_design_id FOREIGN KEY (fk_eqms_high_level_design_id) REFERENCES dnd.eqms_high_level_design(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

