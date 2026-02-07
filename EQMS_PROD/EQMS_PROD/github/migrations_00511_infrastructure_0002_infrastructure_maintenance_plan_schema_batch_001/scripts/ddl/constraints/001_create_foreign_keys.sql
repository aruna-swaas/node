ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_schedule_detail
    ADD CONSTRAINT fk_eimsd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY infrastructure.eqms_infrastructure_maintenance_schedule_detail
    ADD CONSTRAINT fk_eqms_schedule_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_schedule_status_lk_id) REFERENCES organization.eqms_schedule_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

