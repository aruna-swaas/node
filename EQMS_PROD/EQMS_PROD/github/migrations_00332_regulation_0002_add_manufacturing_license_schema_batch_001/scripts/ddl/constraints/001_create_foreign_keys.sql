ALTER TABLE ONLY regulation.eqms_reg_manufacture_license
    ADD CONSTRAINT fk_erml_eqms_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY regulation.eqms_reg_manufacture_license
    ADD CONSTRAINT fk_erml_eqms_reg_manufacture_checklist_section_master_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_reg_manufacture_checklist_section_master_id) REFERENCES organization.eqms_reg_manufacture_checklist_section_master(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_manufacture_license
    ADD CONSTRAINT fk_erml_fk_eqms_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id);

ALTER TABLE ONLY regulation.eqms_reg_manufacture_license_supporting_files
    ADD CONSTRAINT fk_ertmsf_eqms_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id);

ALTER TABLE ONLY regulation.eqms_reg_manufacture_license_supporting_files
    ADD CONSTRAINT fk_ertmsf_eqms_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY regulation.eqms_reg_manufacture_license_supporting_files
    ADD CONSTRAINT fk_ertmsf_fk_eqms_reg_manufacture_license_id FOREIGN KEY (fk_eqms_reg_manufacture_license_id) REFERENCES regulation.eqms_reg_manufacture_license(id);

