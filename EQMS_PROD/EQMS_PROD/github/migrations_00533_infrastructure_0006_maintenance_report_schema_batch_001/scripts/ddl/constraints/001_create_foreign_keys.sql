ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan
    ADD CONSTRAINT fk_ei_infrastructure_id FOREIGN KEY (fk_eqms_infrastructure_id) REFERENCES infrastructure.eqms_infrastructure(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan
    ADD CONSTRAINT fk_ei_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan
    ADD CONSTRAINT fk_eimp_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan_detail
    ADD CONSTRAINT fk_ei_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan_detail
    ADD CONSTRAINT fk_ei_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan_detail
    ADD CONSTRAINT fk_eimpd_frequency_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_frequency_lk_id) REFERENCES organization.eqms_frequency_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan_detail
    ADD CONSTRAINT fk_eimpd_maintenance_service_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_maintenance_service_type_lk_id) REFERENCES organization.eqms_maintenance_service_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan_detail
    ADD CONSTRAINT fk_ei_infrastructure_maintenance_plan_id FOREIGN KEY (fk_eqms_infrastructure_maintenance_plan_id) REFERENCES infrastructure.eqms_infrastructure_maintenance_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan_equipments
    ADD CONSTRAINT fk_ei_equipment_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_equipment_lk_id) REFERENCES organization.eqms_equipment_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan_equipments
    ADD CONSTRAINT fk_ei_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan_equipments
    ADD CONSTRAINT fk_ei_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan_equipments
    ADD CONSTRAINT fk_ei_infrastructure_maintenance_plan_id FOREIGN KEY (fk_eqms_infrastructure_maintenance_plan_id) REFERENCES infrastructure.eqms_infrastructure_maintenance_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan_skill_mapper
    ADD CONSTRAINT fk_empsm_hr_skill_master_id FOREIGN KEY (fk_eqms_hr_skill_master_id) REFERENCES hrcs.eqms_hr_skill_master(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan_skill_mapper
    ADD CONSTRAINT fk_empsm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan_skill_mapper
    ADD CONSTRAINT fk_eqms_infrastructure_maintenance_plan_id FOREIGN KEY (fk_eqms_infrastructure_maintenance_plan_id) REFERENCES infrastructure.eqms_infrastructure_maintenance_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan_tools
    ADD CONSTRAINT fk_ei_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan_tools
    ADD CONSTRAINT fk_ei_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan_tools
    ADD CONSTRAINT fk_ei_tools_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_tools_id) REFERENCES organization.eqms_tools(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_plan_tools
    ADD CONSTRAINT fk_ei_infrastructure_maintenance_plan_id FOREIGN KEY (fk_eqms_infrastructure_maintenance_plan_id) REFERENCES infrastructure.eqms_infrastructure_maintenance_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_report
    ADD CONSTRAINT fk_em_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_report
    ADD CONSTRAINT fk_eqms_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_report
    ADD CONSTRAINT fk_em_infrastructure_maintenance_plan_id FOREIGN KEY (fk_eqms_infrastructure_maintenance_plan_id) REFERENCES infrastructure.eqms_infrastructure_maintenance_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_report_detail
    ADD CONSTRAINT fk_em_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_report_detail
    ADD CONSTRAINT fk_emrd_maintenance_service_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_maintenance_service_type_lk_id) REFERENCES organization.eqms_maintenance_service_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_report_detail
    ADD CONSTRAINT fk_em_infrastructure_maintenance_plan_detail_id FOREIGN KEY (fk_eqms_infrastructure_maintenance_plan_detail_id) REFERENCES infrastructure.eqms_infrastructure_maintenance_plan_detail(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_report_detail
    ADD CONSTRAINT fk_em_maintenance_report_id FOREIGN KEY (fk_eqms_maintenance_report_id) REFERENCES infrastructure.eqms_maintenance_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_report_equipment
    ADD CONSTRAINT fk_em_equipment_item_id FOREIGN KEY (fk_eqms_equipment_item_id) REFERENCES organization.eqms_equipment_item(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_report_equipment
    ADD CONSTRAINT fk_em_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_report_equipment
    ADD CONSTRAINT fk_em_maintenance_report_id FOREIGN KEY (fk_eqms_maintenance_report_id) REFERENCES infrastructure.eqms_maintenance_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_report_supporting_files
    ADD CONSTRAINT fk_em_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_report_supporting_files
    ADD CONSTRAINT fk_em_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_report_supporting_files
    ADD CONSTRAINT fk_em_maintenance_report_id FOREIGN KEY (fk_eqms_maintenance_report_id) REFERENCES infrastructure.eqms_maintenance_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

