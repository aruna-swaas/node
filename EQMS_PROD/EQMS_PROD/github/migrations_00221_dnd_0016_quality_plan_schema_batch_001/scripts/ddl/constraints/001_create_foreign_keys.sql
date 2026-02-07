ALTER TABLE ONLY dnd.eqms_product_quality_objective
    ADD CONSTRAINT fk_epqo_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_product_quality_objective
    ADD CONSTRAINT fk_epqo_product_realization_plan_id FOREIGN KEY (fk_eqms_product_realization_plan_id) REFERENCES dnd.eqms_product_realization_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_quality_plan
    ADD CONSTRAINT fk_epdtsm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_quality_plan
    ADD CONSTRAINT fk_epqp_project_build_stage_order_id FOREIGN KEY (fk_eqms_project_build_stage_order_id) REFERENCES dnd.eqms_project_build_stage_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_quality_plan
    ADD CONSTRAINT fk_epqp_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

