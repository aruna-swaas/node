ALTER TABLE ONLY hrcs.eqms_hr_skill_master
    ADD CONSTRAINT unique_tnt_org_skill_name UNIQUE (eqms_tenant_key, fk_eqms_organization_id, skill_name);

ALTER TABLE ONLY hrcs.eqms_hr_skill_master
    ADD CONSTRAINT fk_ehsm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_skill_supporting_files
    ADD CONSTRAINT fk_ehssf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_skill_supporting_files
    ADD CONSTRAINT fk_ehssf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_skill_supporting_files
    ADD CONSTRAINT fk_ehssf_hr_skill_master_id FOREIGN KEY (fk_eqms_hr_skill_master_id) REFERENCES hrcs.eqms_hr_skill_master(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

