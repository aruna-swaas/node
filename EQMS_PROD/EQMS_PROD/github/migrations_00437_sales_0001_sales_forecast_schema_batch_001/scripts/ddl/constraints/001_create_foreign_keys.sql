ALTER TABLE ONLY sales.eqms_sales_forecast
    ADD CONSTRAINT fk_esf_month_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_month_lk_id) REFERENCES organization.eqms_month_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY sales.eqms_sales_forecast
    ADD CONSTRAINT fk_esf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY sales.eqms_sales_forecast
    ADD CONSTRAINT fk_esf_product_variants_id FOREIGN KEY (fk_eqms_product_variants_id) REFERENCES organization.eqms_product_variants(id);

ALTER TABLE ONLY sales.eqms_sales_forecast
    ADD CONSTRAINT fk_esf_year_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_year_lk_id) REFERENCES organization.eqms_year_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY sales.eqms_sales_forecast_detail
    ADD CONSTRAINT fk_esfd_sales_forecast_id FOREIGN KEY (fk_eqms_sales_forecast_id) REFERENCES sales.eqms_sales_forecast(id);

ALTER TABLE ONLY sales.eqms_sales_forecast_supporting_file
    ADD CONSTRAINT fk_esfsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id);

ALTER TABLE ONLY sales.eqms_sales_forecast_supporting_file
    ADD CONSTRAINT fk_esfsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY sales.eqms_sales_forecast_supporting_file
    ADD CONSTRAINT fk_esfsf_sales_forecast_detail_id FOREIGN KEY (fk_eqms_sales_forecast_detail_id) REFERENCES sales.eqms_sales_forecast_detail(id);

