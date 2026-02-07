ALTER TABLE ONLY risk_management.eqms_risk_menu_stage_review
    ADD CONSTRAINT fk_ermsr_risk_review_menu_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_risk_review_summary_lk_id) REFERENCES organization.eqms_risk_review_summary_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

