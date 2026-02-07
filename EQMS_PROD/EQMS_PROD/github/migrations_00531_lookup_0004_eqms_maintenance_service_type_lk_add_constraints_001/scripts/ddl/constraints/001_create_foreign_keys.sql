ALTER TABLE ONLY infrastructure.eqms_maintenance_plan_detail
    ADD CONSTRAINT fk_empd_maintenance_service_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_maintenance_service_type_lk_id) REFERENCES organization.eqms_maintenance_service_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_installation_report
    ADD CONSTRAINT fk_eiir_maintenance_service_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_maintenance_service_type_lk_id) REFERENCES organization.eqms_maintenance_service_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

