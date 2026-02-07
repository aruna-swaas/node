ALTER TABLE ONLY dnd.eqms_project_concept
    ADD CONSTRAINT fk_epc_concept_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_concept_status_lk_id) REFERENCES organization.eqms_concept_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_concept
    ADD CONSTRAINT fk_epc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_concept
    ADD CONSTRAINT fk_epc_project_build_stage_order_id FOREIGN KEY (fk_eqms_project_build_stage_order_id) REFERENCES dnd.eqms_project_build_stage_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_concept_supporting_files
    ADD CONSTRAINT fk_epcsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_concept_supporting_files
    ADD CONSTRAINT fk_epcsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_concept_supporting_files
    ADD CONSTRAINT fk_epcsf_project_concept_id FOREIGN KEY (fk_eqms_project_concept_id) REFERENCES dnd.eqms_project_concept(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

