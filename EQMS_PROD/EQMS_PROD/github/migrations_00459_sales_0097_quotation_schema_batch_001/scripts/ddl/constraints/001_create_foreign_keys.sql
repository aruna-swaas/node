ALTER TABLE ONLY sales.eqms_customer_master
    ADD CONSTRAINT fk_ecm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY sales.eqms_quotation
    ADD CONSTRAINT fk_eq_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY sales.eqms_quotation
    ADD CONSTRAINT fk_eq_status_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY sales.eqms_quotation
    ADD CONSTRAINT fk_eq_customer_master_id FOREIGN KEY (fk_eqms_customer_master_id) REFERENCES sales.eqms_customer_master(id);

ALTER TABLE ONLY sales.eqms_quotation_customer
    ADD CONSTRAINT fk_eqc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY sales.eqms_quotation_customer
    ADD CONSTRAINT fk_eqc_quotation_id FOREIGN KEY (fk_eqms_quotation_id) REFERENCES sales.eqms_quotation(id);

ALTER TABLE ONLY sales.eqms_quotation_product
    ADD CONSTRAINT fk_eqp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY sales.eqms_quotation_product
    ADD CONSTRAINT fk_eqp_organization_product_id FOREIGN KEY (fk_eqms_organization_product_id) REFERENCES organization.eqms_organization_product(id);

ALTER TABLE ONLY sales.eqms_quotation_product
    ADD CONSTRAINT fk_eqp_product_variants_id FOREIGN KEY (fk_eqms_product_variants_id) REFERENCES organization.eqms_product_variants(id);

ALTER TABLE ONLY sales.eqms_quotation_product
    ADD CONSTRAINT fk_eqp_quotation_id FOREIGN KEY (fk_eqms_quotation_id) REFERENCES sales.eqms_quotation(id);

ALTER TABLE ONLY sales.eqms_quotation_supporting_files
    ADD CONSTRAINT fk_eqsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id);

ALTER TABLE ONLY sales.eqms_quotation_supporting_files
    ADD CONSTRAINT fk_eqsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY sales.eqms_quotation_supporting_files
    ADD CONSTRAINT fk_eqsf_quotation_id FOREIGN KEY (fk_eqms_quotation_id) REFERENCES sales.eqms_quotation(id);

