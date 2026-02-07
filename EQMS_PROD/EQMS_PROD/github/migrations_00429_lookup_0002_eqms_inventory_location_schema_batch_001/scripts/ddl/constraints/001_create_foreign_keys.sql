ALTER TABLE ONLY organization.eqms_inventory_location
    ADD CONSTRAINT fk_eil_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

