ALTER TABLE ONLY sales.eqms_delivery_dispatch
    ADD CONSTRAINT fk_edd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY sales.eqms_delivery_dispatch
    ADD CONSTRAINT fk_esf_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_status_lk_id) REFERENCES organization.eqms_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY sales.eqms_delivery_dispatch_supporting_files
    ADD CONSTRAINT fk_eddsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id);

ALTER TABLE ONLY sales.eqms_delivery_dispatch_supporting_files
    ADD CONSTRAINT fk_eddsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY sales.eqms_delivery_dispatch_supporting_files
    ADD CONSTRAINT fk_eddsf_delivery_dispatch_id FOREIGN KEY (fk_eqms_delivery_dispatch_id) REFERENCES sales.eqms_delivery_dispatch(id);

ALTER TABLE ONLY sales.eqms_delivery_product
    ADD CONSTRAINT fk_edp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY sales.eqms_delivery_product
    ADD CONSTRAINT fk_edp_delivery_dispatch_id FOREIGN KEY (fk_eqms_delivery_dispatch_id) REFERENCES sales.eqms_delivery_dispatch(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY sales.eqms_delivery_site_requirement
    ADD CONSTRAINT fk_edcr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY sales.eqms_delivery_site_requirement
    ADD CONSTRAINT fk_edsr_organization_product_id FOREIGN KEY (fk_eqms_organization_product_id) REFERENCES organization.eqms_organization_product(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

