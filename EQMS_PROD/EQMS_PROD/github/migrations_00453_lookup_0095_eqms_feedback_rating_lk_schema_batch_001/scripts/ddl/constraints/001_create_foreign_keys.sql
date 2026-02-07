ALTER TABLE ONLY organization.eqms_feedback_rating_lk
    ADD CONSTRAINT efrl_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_feedback_rating_lk
    ADD CONSTRAINT fk_efrl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

