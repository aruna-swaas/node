ALTER TABLE ONLY dnd.eqms_part_lk
    ADD CONSTRAINT uk_ep_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY dnd.eqms_part_lk
    ADD CONSTRAINT fk_ep_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY dnd.eqms_part_lk
    ADD CONSTRAINT fk_epl_organization_site_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_site_id) REFERENCES organization.eqms_organization_site(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_part_lk
    ADD CONSTRAINT fk_epl_part_category_id FOREIGN KEY (fk_eqms_part_category_id) REFERENCES vendor.eqms_part_category(id);

ALTER TABLE ONLY dnd.eqms_part_lk
    ADD CONSTRAINT fk_eqms_unit_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_unit_lk_id) REFERENCES organization.eqms_unit_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

