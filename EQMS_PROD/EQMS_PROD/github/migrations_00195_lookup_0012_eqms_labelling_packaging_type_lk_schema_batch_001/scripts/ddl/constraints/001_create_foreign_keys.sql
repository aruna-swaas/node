ALTER TABLE ONLY organization.eqms_labelling_packaging_type_lk
    ADD CONSTRAINT eqms_labelling_packaging_type_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

