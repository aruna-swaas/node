ALTER TABLE ONLY infrastructure.eqms_maintenance_plan
    ADD CONSTRAINT fk_em_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_plan
    ADD CONSTRAINT fk_emp_infrastructure_category_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_infrastructure_category_lk_id) REFERENCES organization.eqms_infrastructure_category_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_plan
    ADD CONSTRAINT fk_emp_infrastructure_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_infrastructure_type_lk_id) REFERENCES organization.eqms_infrastructure_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_plan
    ADD CONSTRAINT fk_eqms_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_plan_detail
    ADD CONSTRAINT fk_em_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_plan_detail
    ADD CONSTRAINT fk_em_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_plan_detail
    ADD CONSTRAINT fk_em_maintenance_plan_id FOREIGN KEY (fk_eqms_maintenance_plan_id) REFERENCES infrastructure.eqms_maintenance_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_plan_equipments
    ADD CONSTRAINT fk_em_equipment_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_equipment_lk_id) REFERENCES organization.eqms_equipment_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_plan_equipments
    ADD CONSTRAINT fk_em_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_plan_equipments
    ADD CONSTRAINT fk_em_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_plan_equipments
    ADD CONSTRAINT fk_em_maintenance_plan_id FOREIGN KEY (fk_eqms_maintenance_plan_id) REFERENCES infrastructure.eqms_maintenance_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_plan_skill_mapper
    ADD CONSTRAINT fk_empsm_hr_skill_master_id FOREIGN KEY (fk_eqms_hr_skill_master_id) REFERENCES hrcs.eqms_hr_skill_master(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_plan_skill_mapper
    ADD CONSTRAINT fk_empsm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_plan_skill_mapper
    ADD CONSTRAINT fk_eqms_maintenance_plan_id FOREIGN KEY (fk_eqms_maintenance_plan_id) REFERENCES infrastructure.eqms_maintenance_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_plan_tools
    ADD CONSTRAINT fk_em_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_plan_tools
    ADD CONSTRAINT fk_em_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_plan_tools
    ADD CONSTRAINT fk_em_tools_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_tools_id) REFERENCES organization.eqms_tools(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_maintenance_plan_tools
    ADD CONSTRAINT fk_em_maintenance_plan_id FOREIGN KEY (fk_eqms_maintenance_plan_id) REFERENCES infrastructure.eqms_maintenance_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

