ALTER TABLE ONLY infrastructure.eqms_maintenance_plan_detail
    ADD CONSTRAINT fk_empd_frequency_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_frequency_lk_id) REFERENCES organization.eqms_frequency_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

