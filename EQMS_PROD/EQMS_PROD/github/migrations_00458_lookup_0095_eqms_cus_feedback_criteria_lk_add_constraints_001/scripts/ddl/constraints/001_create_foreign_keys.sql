ALTER TABLE ONLY sales.eqms_customer_feedback_criteria_detail
    ADD CONSTRAINT fk_ecfcd_feedback_criteria_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_cus_feedback_criteria_lk_id) REFERENCES organization.eqms_cus_feedback_criteria_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

