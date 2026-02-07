ALTER TABLE ONLY marketing.eqms_brochure_content_legal_details
    ADD CONSTRAINT fk_ebcld_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_brochure_content_marketing_details
    ADD CONSTRAINT fk_ebcmd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_brochure_content_product_details
    ADD CONSTRAINT fk_ebcpd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_brochure_content_regulatory_details
    ADD CONSTRAINT fk_epcrd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_brochure_content_sales_details
    ADD CONSTRAINT fk_ebcsd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_product_brochure_content
    ADD CONSTRAINT fk_epbc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_product_brochure_content
    ADD CONSTRAINT fk_epbc_organization_product_id FOREIGN KEY (fk_eqms_organization_product_id) REFERENCES organization.eqms_organization_product(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_brochure_content_legal_details
    ADD CONSTRAINT fk_ebcld_product_brochure_content_id FOREIGN KEY (fk_eqms_product_brochure_content_id) REFERENCES marketing.eqms_product_brochure_content(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_brochure_content_marketing_details
    ADD CONSTRAINT fk_ebcmd_product_brochure_content_id FOREIGN KEY (fk_eqms_product_brochure_content_id) REFERENCES marketing.eqms_product_brochure_content(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_brochure_content_product_details
    ADD CONSTRAINT fk_ebcpd_product_brochure_content_id FOREIGN KEY (fk_eqms_product_brochure_content_id) REFERENCES marketing.eqms_product_brochure_content(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_brochure_content_regulatory_details
    ADD CONSTRAINT fk_epcrd_product_brochure_content_id FOREIGN KEY (fk_eqms_product_brochure_content_id) REFERENCES marketing.eqms_product_brochure_content(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_brochure_content_sales_details
    ADD CONSTRAINT fk_ebcsd_product_brochure_content_id FOREIGN KEY (fk_eqms_product_brochure_content_id) REFERENCES marketing.eqms_product_brochure_content(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

