ALTER TABLE ONLY dnd.eqms_execution_stage_verification
    ADD CONSTRAINT fk_esv_verification_result_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_verification_result_lk_id) REFERENCES organization.eqms_verification_result_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

