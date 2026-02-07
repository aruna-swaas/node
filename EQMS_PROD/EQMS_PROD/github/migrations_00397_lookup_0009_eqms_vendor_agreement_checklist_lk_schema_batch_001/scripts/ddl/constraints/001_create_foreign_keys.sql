ALTER TABLE ONLY organization.eqms_vendor_agreement_checklist_lk
    ADD CONSTRAINT uk_evaclk_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_vendor_agreement_checklist_lk
    ADD CONSTRAINT fk_evaclk_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

