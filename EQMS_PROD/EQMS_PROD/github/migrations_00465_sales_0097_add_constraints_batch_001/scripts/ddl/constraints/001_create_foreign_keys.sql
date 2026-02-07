ALTER TABLE ONLY sales.eqms_customer_feedback
    ADD CONSTRAINT fk_ecf_customer_id FOREIGN KEY (fk_eqms_customer_master_id) REFERENCES sales.eqms_customer_master(id);

