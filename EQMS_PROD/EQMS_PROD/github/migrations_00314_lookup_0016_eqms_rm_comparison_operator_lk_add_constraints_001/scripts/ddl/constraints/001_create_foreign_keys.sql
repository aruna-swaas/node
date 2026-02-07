ALTER TABLE ONLY risk_management.eqms_rmp_residual_risk_acceptability_criteria
    ADD CONSTRAINT fk_errrac_rm_comparison_operator_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_rm_comparison_operator_lk_id) REFERENCES organization.eqms_rm_comparison_operator_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

