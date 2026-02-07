ALTER TABLE ONLY risk_management.eqms_risk_menu_stage_review
    ADD CONSTRAINT fk_ermsr_risk_stage_review_id FOREIGN KEY (fk_eqms_risk_stage_review_id) REFERENCES risk_management.eqms_risk_stage_review(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

