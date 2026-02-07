CREATE TABLE notification_center.eqms_nc_notification_transactions (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_nc_notifications_id integer,
    fk_eqms_nc_provider_type_master_id integer,
    fk_eqms_nc_sqs_message_log_id integer,
    transaction_id character varying(100),
    notification_response character varying(250),
    transaction_status integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

