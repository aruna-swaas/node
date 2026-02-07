ALTER TABLE ONLY risk_management.eqms_risk
    ADD CONSTRAINT fk_er_hazard_id FOREIGN KEY (fk_eqms_hazard_id) REFERENCES risk_management.eqms_hazard(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_hazard_ref_rcm
    ADD CONSTRAINT fk_ehrrcm_hazard_id FOREIGN KEY (fk_eqms_hazard_id) REFERENCES risk_management.eqms_hazard(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

