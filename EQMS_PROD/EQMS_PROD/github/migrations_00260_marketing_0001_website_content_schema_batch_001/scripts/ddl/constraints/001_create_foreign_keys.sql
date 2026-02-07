ALTER TABLE ONLY marketing.eqms_product_website_content
    ADD CONSTRAINT fk_epwc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_product_website_content
    ADD CONSTRAINT fk_epwc_organization_product_id FOREIGN KEY (fk_eqms_organization_product_id) REFERENCES organization.eqms_organization_product(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_website_content_legal_details
    ADD CONSTRAINT fk_ewcld_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_website_content_legal_details
    ADD CONSTRAINT fk_ewcld_product_website_content_id FOREIGN KEY (fk_eqms_product_website_content_id) REFERENCES marketing.eqms_product_website_content(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_website_content_marketing_details
    ADD CONSTRAINT fk_ewcmd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_website_content_marketing_details
    ADD CONSTRAINT fk_ewcmd_product_website_content_id FOREIGN KEY (fk_eqms_product_website_content_id) REFERENCES marketing.eqms_product_website_content(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_website_content_product_details
    ADD CONSTRAINT fk_ewcpd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_website_content_product_details
    ADD CONSTRAINT fk_ewcpd_product_website_content_id FOREIGN KEY (fk_eqms_product_website_content_id) REFERENCES marketing.eqms_product_website_content(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_website_content_regulatory_details
    ADD CONSTRAINT fk_ewcrd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_website_content_regulatory_details
    ADD CONSTRAINT fk_ewcrd_product_website_content_id FOREIGN KEY (fk_eqms_product_website_content_id) REFERENCES marketing.eqms_product_website_content(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_website_content_sales_details
    ADD CONSTRAINT fk_ewcsd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY marketing.eqms_website_content_sales_details
    ADD CONSTRAINT fk_ewcsd_product_website_content_id FOREIGN KEY (fk_eqms_product_website_content_id) REFERENCES marketing.eqms_product_website_content(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

