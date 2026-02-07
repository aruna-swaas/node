ALTER TABLE ONLY organization.eqms_vendor_selection_group_lk
    ADD CONSTRAINT uk_eglk_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

