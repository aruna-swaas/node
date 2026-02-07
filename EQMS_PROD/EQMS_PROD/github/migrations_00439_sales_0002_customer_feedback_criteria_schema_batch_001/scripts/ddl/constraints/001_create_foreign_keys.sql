ALTER TABLE ONLY sales.eqms_customer_feedback_criteria
    ADD CONSTRAINT fk_ecfc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY sales.eqms_customer_feedback_criteria
    ADD CONSTRAINT fk_ecfc_organization_product_id FOREIGN KEY (fk_eqms_organization_product_id) REFERENCES organization.eqms_organization_product(id);

ALTER TABLE ONLY sales.eqms_customer_feedback_criteria
    ADD CONSTRAINT fk_esf_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY sales.eqms_customer_feedback_criteria_detail
    ADD CONSTRAINT fk_ecfcd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY sales.eqms_customer_feedback_criteria_detail
    ADD CONSTRAINT fk_ecfcd_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY sales.eqms_customer_feedback_criteria_detail
    ADD CONSTRAINT fk_ecfcd_customer_feedback_criteria_id FOREIGN KEY (fk_eqms_customer_feedback_criteria_id) REFERENCES sales.eqms_customer_feedback_criteria(id);

