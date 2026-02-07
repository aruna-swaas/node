ALTER TABLE ONLY organization.eqms_feedback_source_lk
    ADD CONSTRAINT efsl_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_feedback_source_lk
    ADD CONSTRAINT fk_efsl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

