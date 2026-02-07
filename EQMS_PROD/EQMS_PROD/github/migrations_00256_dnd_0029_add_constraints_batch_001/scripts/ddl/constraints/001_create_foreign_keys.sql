ALTER TABLE ONLY dnd.eqms_design_transfer_applicability
    ADD CONSTRAINT fk_edta_product_applicable_clause_id FOREIGN KEY (fk_eqms_product_applicable_clause_id) REFERENCES dnd.eqms_product_applicable_clause(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

