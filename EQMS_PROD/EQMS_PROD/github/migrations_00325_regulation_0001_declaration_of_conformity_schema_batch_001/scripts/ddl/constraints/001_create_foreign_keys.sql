ALTER TABLE ONLY regulation.eqms_reg_conformity_declaration
    ADD CONSTRAINT fk_ercd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_conformity_declaration
    ADD CONSTRAINT fk_ercd_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_conformity_declaration
    ADD CONSTRAINT fk_ercd_reg_product_classification_id FOREIGN KEY (fk_eqms_reg_product_classification_id) REFERENCES organization.eqms_reg_product_classification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

