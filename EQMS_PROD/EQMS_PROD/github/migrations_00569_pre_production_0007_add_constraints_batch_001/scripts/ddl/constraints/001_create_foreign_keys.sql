ALTER TABLE ONLY pre_production.eqms_pre_prod_part_assembly_drawing_supp_file
    ADD CONSTRAINT fk_eppadsf_pre_prod_part_assembly_drawing_id FOREIGN KEY (fk_eqms_pre_prod_part_assembly_drawing_id) REFERENCES pre_production.eqms_pre_prod_part_assembly_drawing(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

