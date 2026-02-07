ALTER TABLE ONLY sales.eqms_sales_forecast_detail
    ADD CONSTRAINT fk_esfd_priority_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_priority_lk_id) REFERENCES organization.eqms_priority_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

