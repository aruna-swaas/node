CREATE TABLE notification_center.eqms_nc_sqs_message_api_key (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_nc_sqs_message_log_deduplication_id character varying(255),
    api_key character varying(250),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

