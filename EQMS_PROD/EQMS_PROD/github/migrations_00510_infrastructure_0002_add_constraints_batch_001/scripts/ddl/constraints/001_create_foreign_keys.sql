ALTER TABLE ONLY purchase.eqms_purchase_infrastructure_request
    ADD CONSTRAINT fk_epir_infrastructure_request_id FOREIGN KEY (fk_eqms_infrastructure_request_id) REFERENCES infrastructure.eqms_infrastructure_request(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

