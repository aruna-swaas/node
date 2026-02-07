ALTER TABLE ONLY organization.eqms_action_planned_lk
    ADD CONSTRAINT unique_eapl_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

