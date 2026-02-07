ALTER TABLE ONLY vendor.eqms_vendor_selection_criteria_re_evaluation
    ADD CONSTRAINT fk_evrgcr_vendor_re_evaluation_id FOREIGN KEY (fk_eqms_vendor_re_evaluation_id) REFERENCES vendor.eqms_vendor_re_evaluation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

