ALTER TABLE ONLY qc.eqms_purchase_team
    ADD CONSTRAINT fk_ept_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_purchase_team
    ADD CONSTRAINT fk_ept_purchase_order_id FOREIGN KEY (fk_eqms_purchase_order_id) REFERENCES purchase.eqms_purchase_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_purchase_team
    ADD CONSTRAINT fk_esf_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY qc.eqms_purchase_team_details
    ADD CONSTRAINT fk_eptd_hr_skill_master_id FOREIGN KEY (fk_eqms_hr_skill_master_id) REFERENCES hrcs.eqms_hr_skill_master(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_purchase_team_details
    ADD CONSTRAINT fk_eptd_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_purchase_team_details
    ADD CONSTRAINT fk_eptd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_purchase_team_details
    ADD CONSTRAINT fk_eptd_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_purchase_team_details
    ADD CONSTRAINT fk_eqms_part_category_id FOREIGN KEY (fk_eqms_part_category_id) REFERENCES vendor.eqms_part_category(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY qc.eqms_purchase_team_details
    ADD CONSTRAINT fk_eptd_purchase_team_id FOREIGN KEY (fk_eqms_purchase_team_id) REFERENCES qc.eqms_purchase_team(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

