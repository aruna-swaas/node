ALTER TABLE ONLY vendor.eqms_sample_order_inspection_supporting_files
    ADD CONSTRAINT fk_esoisf_sample_order_inspection_id FOREIGN KEY (fk_eqms_sample_order_inspection_id) REFERENCES vendor.eqms_sample_order_inspection(id);

