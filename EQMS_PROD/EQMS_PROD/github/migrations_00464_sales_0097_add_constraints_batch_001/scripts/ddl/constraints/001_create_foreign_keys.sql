ALTER TABLE ONLY sales.eqms_delivery_product
    ADD CONSTRAINT fk_edp_quotation_product_id FOREIGN KEY (fk_eqms_quotation_product_id) REFERENCES sales.eqms_quotation_product(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

