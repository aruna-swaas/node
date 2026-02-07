ALTER TABLE ONLY risk_management.eqms_risk_stage_review
    ADD CONSTRAINT fk_ersr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_stage_review
    ADD CONSTRAINT fk_ersr_risk_review_requirment_id FOREIGN KEY (fk_eqms_risk_review_requirment_id) REFERENCES risk_management.eqms_risk_review_requirment(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

