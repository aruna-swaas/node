ALTER TABLE ONLY notification_center.eqms_nc_provider_channel_master
    ADD CONSTRAINT eqms_nc_provider_channel_master_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY notification_center.eqms_nc_provider_header
    ADD CONSTRAINT eqms_nc_provider_header_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY notification_center.eqms_nc_provider_type_master
    ADD CONSTRAINT eqms_nc_provider_type_master_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY notification_center.eqms_nc_template_header
    ADD CONSTRAINT eqms_nc_template_header_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY notification_center.eqms_nc_sqs_message_log
    ADD CONSTRAINT unique_message_deduplication_id UNIQUE (message_deduplication_id);

ALTER TABLE ONLY notification_center.eqms_nc_email_notification_log
    ADD CONSTRAINT fk_enenl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_email_provider_master
    ADD CONSTRAINT fk_encepm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_notification_header
    ADD CONSTRAINT fk_ennh_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_notification_transactions
    ADD CONSTRAINT fk_ennt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_notifications
    ADD CONSTRAINT fk_enn_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_provider_channel_master
    ADD CONSTRAINT fk_encpcm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_provider_header
    ADD CONSTRAINT fk_encph_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_provider_type_master
    ADD CONSTRAINT fk_encptm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_notification_transactions
    ADD CONSTRAINT fk_ennt_nc_provider_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nc_provider_type_master_id) REFERENCES notification_center.eqms_nc_provider_type_master(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_provider_channel_master
    ADD CONSTRAINT fk_encpcm_nc_provider_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nc_provider_type_master_id) REFERENCES notification_center.eqms_nc_provider_type_master(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_provider_header
    ADD CONSTRAINT fk_encph_nc_provider_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nc_provider_type_master_id) REFERENCES notification_center.eqms_nc_provider_type_master(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_provider_header
    ADD CONSTRAINT fk_encph_nc_provider_channel_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nc_provider_channel_master_id) REFERENCES notification_center.eqms_nc_provider_channel_master(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_email_provider_master
    ADD CONSTRAINT fk_encepm_nc_provider_header_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nc_provider_header_id) REFERENCES notification_center.eqms_nc_provider_header(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_retry_config
    ADD CONSTRAINT fk_encrc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_retry_config
    ADD CONSTRAINT fk_encrc_nc_provider_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nc_provider_type_master_id) REFERENCES notification_center.eqms_nc_provider_type_master(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_retry_config
    ADD CONSTRAINT fk_encrc_nc_provider_channel_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nc_provider_channel_master_id) REFERENCES notification_center.eqms_nc_provider_channel_master(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_retry_config
    ADD CONSTRAINT fk_encrc_nc_provider_header_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nc_provider_header_id) REFERENCES notification_center.eqms_nc_provider_header(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_retry_log
    ADD CONSTRAINT fk_enrl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_retry_log
    ADD CONSTRAINT fk_encrl_nc_retry_config_id FOREIGN KEY (fk_eqms_nc_retry_config_id) REFERENCES notification_center.eqms_nc_retry_config(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_schedule
    ADD CONSTRAINT fk_enc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_schedule_email_recipient
    ADD CONSTRAINT fk_enser_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_schedule_variable_config
    ADD CONSTRAINT fk_ensvc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_sqs_message_api_key
    ADD CONSTRAINT fk_encsmak_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_sqs_message_log
    ADD CONSTRAINT fk_encsml_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_notification_transactions
    ADD CONSTRAINT fk_ennt_nc_sql_message_log_id FOREIGN KEY (fk_eqms_nc_sqs_message_log_id) REFERENCES notification_center.eqms_nc_sqs_message_log(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_sqs_message_api_key
    ADD CONSTRAINT fk_ensmak_nc_sqs_message_log_deduplication_id FOREIGN KEY (fk_eqms_nc_sqs_message_log_deduplication_id) REFERENCES notification_center.eqms_nc_sqs_message_log(message_deduplication_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_system_settings
    ADD CONSTRAINT fk_encss_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_template_header
    ADD CONSTRAINT fk_encth_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_template_header
    ADD CONSTRAINT fk_encss_nc_provider_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nc_provider_type_master_id) REFERENCES notification_center.eqms_nc_provider_type_master(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_template_header
    ADD CONSTRAINT fk_encss_nc_provider_header_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nc_provider_header_id) REFERENCES notification_center.eqms_nc_provider_header(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_email_notification_log
    ADD CONSTRAINT fk_encenl_nc_template_header_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nc_template_header_id) REFERENCES notification_center.eqms_nc_template_header(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_notification_header
    ADD CONSTRAINT fk_ennh_nc_template_header_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nc_template_header_id) REFERENCES notification_center.eqms_nc_template_header(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_notifications
    ADD CONSTRAINT fk_enn_nc_template_header_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nc_template_header_id) REFERENCES notification_center.eqms_nc_template_header(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_email_notification_log
    ADD CONSTRAINT fk_encenl_notifications_id FOREIGN KEY (fk_eqms_nc_notifications_id) REFERENCES notification_center.eqms_nc_notifications(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_notification_transactions
    ADD CONSTRAINT fk_ennt_notifications_id FOREIGN KEY (fk_eqms_nc_notifications_id) REFERENCES notification_center.eqms_nc_notifications(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_retry_log
    ADD CONSTRAINT fk_encrl_notifications_id FOREIGN KEY (fk_eqms_nc_notifications_id) REFERENCES notification_center.eqms_nc_notifications(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_schedule
    ADD CONSTRAINT fk_ens_nc_template_header_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nc_template_header_id) REFERENCES notification_center.eqms_nc_template_header(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_schedule_email_recipient
    ADD CONSTRAINT fk_ensev_nc_schedule_id FOREIGN KEY (fk_eqms_nc_schedule_id) REFERENCES notification_center.eqms_nc_schedule(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_schedule_variable_config
    ADD CONSTRAINT fk_ensvc_nc_schedule_id FOREIGN KEY (fk_eqms_nc_schedule_id) REFERENCES notification_center.eqms_nc_schedule(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_template_identifiers
    ADD CONSTRAINT fk_enti_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_template_identifiers
    ADD CONSTRAINT fk_encti_nc_template_header_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nc_template_header_id) REFERENCES notification_center.eqms_nc_template_header(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_template_variables
    ADD CONSTRAINT fk_entv_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY notification_center.eqms_nc_template_variables
    ADD CONSTRAINT fk_encti_nc_template_header_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nc_template_header_id) REFERENCES notification_center.eqms_nc_template_header(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

