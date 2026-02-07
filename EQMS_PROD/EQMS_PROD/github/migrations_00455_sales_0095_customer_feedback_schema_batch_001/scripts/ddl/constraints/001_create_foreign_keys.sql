ALTER TABLE ONLY sales.eqms_cus_feedback_person_supporting_files
    ADD CONSTRAINT fk_ecfpsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id);

ALTER TABLE ONLY sales.eqms_cus_feedback_person_supporting_files
    ADD CONSTRAINT fk_ecfpsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY sales.eqms_customer_feedback
    ADD CONSTRAINT fk_ecf_feedback_source_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_feedback_source_id) REFERENCES organization.eqms_feedback_source_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY sales.eqms_customer_feedback
    ADD CONSTRAINT fk_ecf_order_acknowledgement_id FOREIGN KEY (fk_eqms_order_acknowledgement_id) REFERENCES sales.eqms_order_acknowledgement(id);

ALTER TABLE ONLY sales.eqms_customer_feedback
    ADD CONSTRAINT fk_ecf_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id);

ALTER TABLE ONLY sales.eqms_customer_feedback
    ADD CONSTRAINT fk_ecf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY sales.eqms_customer_feedback
    ADD CONSTRAINT fk_ecf_organization_product_id FOREIGN KEY (fk_eqms_organization_product_id) REFERENCES organization.eqms_organization_product(id);

ALTER TABLE ONLY sales.eqms_customer_feedback
    ADD CONSTRAINT fk_esf_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY sales.eqms_customer_feedback_person
    ADD CONSTRAINT fk_ecfp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY sales.eqms_customer_feedback_person
    ADD CONSTRAINT fk_ecfp_customer_feedback_id FOREIGN KEY (fk_eqms_customer_feedback_id) REFERENCES sales.eqms_customer_feedback(id);

ALTER TABLE ONLY sales.eqms_cus_feedback_person_supporting_files
    ADD CONSTRAINT fk_ecfpsf_customer_feedback_person_id FOREIGN KEY (fk_eqms_customer_feedback_person_id) REFERENCES sales.eqms_customer_feedback_person(id);

ALTER TABLE ONLY sales.eqms_customer_feedback_response
    ADD CONSTRAINT fk_ecfr_feedback_rating_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_feedback_rating_id) REFERENCES organization.eqms_feedback_rating_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY sales.eqms_customer_feedback_response
    ADD CONSTRAINT fk_ecfr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY sales.eqms_customer_feedback_response
    ADD CONSTRAINT fk_eqms_customer_feedback_criteria_detail_id FOREIGN KEY (fk_eqms_customer_feedback_criteria_detail_id) REFERENCES sales.eqms_customer_feedback_criteria_detail(id);

ALTER TABLE ONLY sales.eqms_customer_feedback_response
    ADD CONSTRAINT fk_ecfr_customer_feedback_id FOREIGN KEY (fk_eqms_customer_feedback_id) REFERENCES sales.eqms_customer_feedback(id);

ALTER TABLE ONLY sales.eqms_customer_feedback_supporting_files
    ADD CONSTRAINT fk_ecfsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id);

ALTER TABLE ONLY sales.eqms_customer_feedback_supporting_files
    ADD CONSTRAINT fk_ecfsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY sales.eqms_customer_feedback_supporting_files
    ADD CONSTRAINT fk_ecfsf_customer_feedback_id FOREIGN KEY (fk_eqms_customer_feedback_id) REFERENCES sales.eqms_customer_feedback(id);

