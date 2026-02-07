ALTER TABLE ONLY risk_management.eqms_hazard_ref_rcm
    ADD CONSTRAINT fk_ehrrcm_risk_control_measure_id FOREIGN KEY (fk_eqms_risk_control_measure_id) REFERENCES risk_management.eqms_risk_control_measure(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

