ALTER TABLE ONLY qc.eqms_sanity_spec_checklist
    ADD CONSTRAINT fk_esf_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY qc.eqms_sanity_spec_checklist
    ADD CONSTRAINT fk_essc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_sanity_spec_checklist
    ADD CONSTRAINT fk_essc_purchase_order_id FOREIGN KEY (fk_eqms_purchase_order_id) REFERENCES purchase.eqms_purchase_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_sanity_spec_checklist_applicable_group
    ADD CONSTRAINT fk_esscag_group_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_sanity_spec_checklist_group_lk_id) REFERENCES organization.eqms_sanity_spec_checklist_group_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_sanity_spec_checklist_applicable_group
    ADD CONSTRAINT fk_esscag_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_sanity_spec_checklist_applicable_group
    ADD CONSTRAINT fk_esscag_sanity_spec_checklist_id FOREIGN KEY (fk_eqms_sanity_spec_checklist_id) REFERENCES qc.eqms_sanity_spec_checklist(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_sanity_spec_checklist_detail
    ADD CONSTRAINT fk_esscd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_sanity_spec_checklist_detail
    ADD CONSTRAINT fk_esscd_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_sanity_spec_checklist_detail
    ADD CONSTRAINT fk_esscd_applicable_group_id FOREIGN KEY (fk_eqms_sanity_spec_checklist_applicable_group_id) REFERENCES qc.eqms_sanity_spec_checklist_applicable_group(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

