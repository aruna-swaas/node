ALTER TABLE ONLY dnd.eqms_product_functional_blocks
    ADD CONSTRAINT fk_epfb_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_product_functional_blocks
    ADD CONSTRAINT fk_eppv_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_product_functional_subblocks
    ADD CONSTRAINT fk_epfs_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_product_functional_subblocks
    ADD CONSTRAINT fk_epfs_product_functional_block_id FOREIGN KEY (fk_eqms_product_functional_block_id) REFERENCES dnd.eqms_product_functional_blocks(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

