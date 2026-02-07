ALTER TABLE ONLY dnd.eqms_product_realization_plan
    ADD CONSTRAINT fk_eprp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_product_realization_plan
    ADD CONSTRAINT fk_eprp_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_product_realization_stage_process
    ADD CONSTRAINT fk_eprsp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_product_realization_stage_process
    ADD CONSTRAINT fk_eqms_month_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_month_lk_id) REFERENCES organization.eqms_month_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_product_realization_stage_process
    ADD CONSTRAINT fk_eprsp_product_realization_plan_id FOREIGN KEY (fk_eqms_product_realization_plan_id) REFERENCES dnd.eqms_product_realization_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

