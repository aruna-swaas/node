ALTER TABLE ONLY risk_management.eqms_rmp_committee
    ADD CONSTRAINT fk_erc_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_committee
    ADD CONSTRAINT fk_erc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_committee
    ADD CONSTRAINT fk_erc_risk_management_plan_id FOREIGN KEY (fk_eqms_risk_management_plan_id) REFERENCES risk_management.eqms_risk_management_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_committee
    ADD CONSTRAINT fk_erc_role_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_role_lk_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY risk_management.eqms_rmp_committee
    ADD CONSTRAINT fk_erc_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

