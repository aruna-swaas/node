ALTER TABLE ONLY vendor.eqms_vendor_selection_criteria_evaluation
    ADD CONSTRAINT fk_evsce_vendor_evaluation_id FOREIGN KEY (fk_eqms_vendor_evaluation_id) REFERENCES vendor.eqms_vendor_evaluation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

