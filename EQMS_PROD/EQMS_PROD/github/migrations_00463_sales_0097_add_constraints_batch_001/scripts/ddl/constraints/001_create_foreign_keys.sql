ALTER TABLE ONLY sales.eqms_order_acknowledgement
    ADD CONSTRAINT fk_eqms_quotation_id FOREIGN KEY (fk_eqms_quotation_id) REFERENCES sales.eqms_quotation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY sales.eqms_delivery_dispatch
    ADD CONSTRAINT fk_edd_quotation_id FOREIGN KEY (fk_eqms_quotation_id) REFERENCES sales.eqms_quotation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

