ALTER TABLE ONLY vendor.eqms_vendor_agreement_checklist_status
    ADD CONSTRAINT fk_evacs_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY vendor.eqms_vendor_agreement_checklist_status
    ADD CONSTRAINT fk_evacs_vendor_agreement_checklist_id FOREIGN KEY (fk_eqms_vendor_agreement_checklist_id) REFERENCES vendor.eqms_vendor_agreement_checklist(id);

ALTER TABLE ONLY vendor.eqms_vendor_agreement_checklist_status
    ADD CONSTRAINT fk_evacs_vendor_agreement_checklist_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_vendor_agreement_checklist_lk_id) REFERENCES organization.eqms_vendor_agreement_checklist_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

