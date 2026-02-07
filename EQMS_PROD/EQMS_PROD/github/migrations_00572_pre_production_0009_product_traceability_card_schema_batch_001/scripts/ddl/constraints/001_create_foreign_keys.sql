ALTER TABLE ONLY pre_production.eqms_pre_prod_product_trace_card_process_checklist
    ADD CONSTRAINT fk_eppfop_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_product_trace_card_process_checklist
    ADD CONSTRAINT fk_eppptcpc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_product_trace_card_process_checklist
    ADD CONSTRAINT fk_eppptcpc_process_checklist_group_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_pre_prod_product_process_checklist_group_lk_id) REFERENCES organization.eqms_pre_prod_product_process_checklist_group_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_product_trace_card_process_checklist
    ADD CONSTRAINT fk_eppptcpc_process_checklist_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_pre_prod_product_process_checklist_lk_id) REFERENCES organization.eqms_pre_prod_product_process_checklist_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_product_trace_card_process_checklist
    ADD CONSTRAINT fk_eppptcpc_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_product_traceability_card
    ADD CONSTRAINT fk_eppptc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_product_traceability_card
    ADD CONSTRAINT fk_epptc_pre_prod_bom_assembly_part_item_details_id FOREIGN KEY (fk_eqms_pre_prod_bom_assembly_part_item_details_id) REFERENCES pre_production.eqms_pre_prod_bom_assembly_part_item_details(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_product_trace_card_process_checklist
    ADD CONSTRAINT fk_eppptcpc_pre_prod_product_traceability_card_id FOREIGN KEY (fk_eqms_pre_prod_product_traceability_card_id) REFERENCES pre_production.eqms_pre_prod_product_traceability_card(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

