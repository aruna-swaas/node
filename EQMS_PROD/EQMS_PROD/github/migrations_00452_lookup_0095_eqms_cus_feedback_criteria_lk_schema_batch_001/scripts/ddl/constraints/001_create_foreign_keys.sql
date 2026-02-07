ALTER TABLE ONLY organization.eqms_cus_feedback_criteria_lk
    ADD CONSTRAINT uk_ecfcl_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_cus_feedback_criteria_lk
    ADD CONSTRAINT fk_ecfcl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY organization.eqms_cus_feedback_criteria_lk
    ADD CONSTRAINT fk_eqmsref_cus_feedback_group_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_cus_feedback_group_lk_id) REFERENCES organization.eqms_cus_feedback_group_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

