ALTER TABLE ONLY pre_production.eqms_pre_prod_team_details
    ADD CONSTRAINT fk_epptd_pre_prod_team_id FOREIGN KEY (fk_eqms_pre_prod_team_id) REFERENCES pre_production.eqms_pre_prod_team(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

