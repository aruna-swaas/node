ALTER TABLE ONLY risk_management.eqms_risk_review_requirment
    ADD CONSTRAINT fk_errr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_risk_review_requirment
    ADD CONSTRAINT fk_errr_rmp_applicable_stage_id FOREIGN KEY (fk_eqms_rmp_applicable_stage_id) REFERENCES risk_management.eqms_rmp_applicable_stage(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

