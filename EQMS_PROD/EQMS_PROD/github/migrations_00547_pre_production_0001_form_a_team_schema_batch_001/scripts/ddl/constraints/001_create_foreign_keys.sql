ALTER TABLE ONLY pre_production.eqms_pre_prod_team_details
    ADD CONSTRAINT fk_epptd_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_team_details
    ADD CONSTRAINT fk_epptd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_team_details
    ADD CONSTRAINT fk_epptd_roles_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_roles_lk_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY pre_production.eqms_pre_prod_team_details
    ADD CONSTRAINT fk_epptd_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

