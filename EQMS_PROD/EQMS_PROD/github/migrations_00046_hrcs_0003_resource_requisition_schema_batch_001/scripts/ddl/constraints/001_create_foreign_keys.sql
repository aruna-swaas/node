ALTER TABLE ONLY hrcs.eqms_hr_resource_requisition
    ADD CONSTRAINT fk_ehrd_hr_recruitment_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_hr_recruitment_type_lk_id) REFERENCES organization.eqms_hr_recruitment_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_resource_requisition
    ADD CONSTRAINT fk_ehrd_hr_resource_required_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_hr_resource_required_type_lk_id) REFERENCES organization.eqms_hr_resource_required_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_resource_requisition
    ADD CONSTRAINT fk_ehrd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_resource_requisition
    ADD CONSTRAINT fk_ehrd_roles_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_roles_lk_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

