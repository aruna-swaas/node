ALTER TABLE ONLY dnd.eqms_part_lk
    ADD CONSTRAINT fk_eqms_inventory_location_id FOREIGN KEY (fk_eqms_inventory_location_id) REFERENCES organization.eqms_inventory_location(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

