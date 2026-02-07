ALTER TABLE ONLY risk_management.eqms_hazard
    ADD CONSTRAINT eqms_hazard_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, hazard_code);

ALTER TABLE ONLY risk_management.eqms_harm_hazard_mapping
    ADD CONSTRAINT fk_ehhm_harm_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_harm_lk_id) REFERENCES organization.eqms_harm_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_harm_hazard_mapping
    ADD CONSTRAINT fk_ehhm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_hazard
    ADD CONSTRAINT fk_eh_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_hazard
    ADD CONSTRAINT fk_eh_risk_applicability_id FOREIGN KEY (fk_eqms_risk_subcategory_applicability_id) REFERENCES risk_management.eqms_risk_subcategory_applicability(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_harm_hazard_mapping
    ADD CONSTRAINT fk_ehhm_hazard_id FOREIGN KEY (fk_eqms_hazard_id) REFERENCES risk_management.eqms_hazard(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_hazard_identification
    ADD CONSTRAINT fk_ehi_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_hazard_identification
    ADD CONSTRAINT fk_ehi_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_hazard_identification_tool_mapper
    ADD CONSTRAINT fk_ehitm_hazard_identification_tool_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_hazard_identification_tool_lk_id) REFERENCES organization.eqms_hazard_identification_tool_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_hazard_identification_tool_mapper
    ADD CONSTRAINT fk_ehitm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_hazard_identification_tool_mapper
    ADD CONSTRAINT fk_ehitm_hazard_identification_id FOREIGN KEY (fk_eqms_hazard_identification_id) REFERENCES risk_management.eqms_hazard_identification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_hazard_identification_tool_supp_files
    ADD CONSTRAINT fk_ehsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_hazard_identification_tool_supp_files
    ADD CONSTRAINT fk_ehsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_hazard_identification_tool_supp_files
    ADD CONSTRAINT fk_eqms_hazard_identification_tool_mapper_id FOREIGN KEY (fk_eqms_hazard_identification_tool_mapper_id) REFERENCES risk_management.eqms_hazard_identification_tool_mapper(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

