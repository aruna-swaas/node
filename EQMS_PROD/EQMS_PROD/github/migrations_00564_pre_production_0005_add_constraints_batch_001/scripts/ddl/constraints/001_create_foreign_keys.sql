ALTER TABLE ONLY qc.eqms_incoming_insp_spec_batch_results
    ADD CONSTRAINT fk_eisbr_pre_prod_spec_criteria_id FOREIGN KEY (fk_eqms_pre_prod_incoming_inspection_spec_criteria_id) REFERENCES pre_production.eqms_pre_prod_incoming_inspection_spec_criteria(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_incoming_insp_spec_unit_results
    ADD CONSTRAINT fk_eisur_pre_prod_spec_criteria_id FOREIGN KEY (fk_eqms_pre_prod_incoming_inspection_spec_criteria_id) REFERENCES pre_production.eqms_pre_prod_incoming_inspection_spec_criteria(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

