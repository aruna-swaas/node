ALTER TABLE ONLY risk_management.eqms_hazard_ref_rcm
    ADD CONSTRAINT fk_ehrrcm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

