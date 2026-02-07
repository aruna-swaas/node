ALTER TABLE ONLY infrastructure.eqms_infra_installation_report_supporting_files
    ADD CONSTRAINT fk_ei_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infra_installation_report_supporting_files
    ADD CONSTRAINT fk_ei_infrastructure_installation_report_id FOREIGN KEY (fk_eqms_infrastructure_installation_report_id) REFERENCES infrastructure.eqms_infrastructure_installation_report(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infra_installation_report_supporting_files
    ADD CONSTRAINT fk_ei_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure
    ADD CONSTRAINT fk_ei_frequency_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_frequency_lk_id) REFERENCES organization.eqms_frequency_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure
    ADD CONSTRAINT fk_ei_infrastructure_category_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_infrastructure_category_lk_id) REFERENCES organization.eqms_infrastructure_category_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure
    ADD CONSTRAINT fk_ei_infrastructure_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_infrastructure_type_lk_id) REFERENCES organization.eqms_infrastructure_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure
    ADD CONSTRAINT fk_ei_organization_department_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_department_id) REFERENCES organization.eqms_organization_department(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure
    ADD CONSTRAINT fk_ei_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure
    ADD CONSTRAINT fk_ei_power_supply_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_power_supply_lk_id) REFERENCES organization.eqms_power_supply_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure
    ADD CONSTRAINT fk_ei_purchase_order_id FOREIGN KEY (fk_eqms_purchase_order_id) REFERENCES purchase.eqms_purchase_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure
    ADD CONSTRAINT fk_ei_purchase_order_infrastructure_detail_id FOREIGN KEY (fk_eqms_purchase_order_infrastructure_detail_id) REFERENCES purchase.eqms_purchase_order_infrastructure_detail(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure
    ADD CONSTRAINT fk_ei_selection_installation_procedure_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_selection_installation_procedure_lk_id) REFERENCES organization.eqms_selection_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure
    ADD CONSTRAINT fk_ei_selection_process_equipment_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_selection_process_equipment_lk_id) REFERENCES organization.eqms_selection_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure
    ADD CONSTRAINT fk_ei_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

