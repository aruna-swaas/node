CREATE TABLE notification_center.eqms_nc_sqs_message_api_key_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_nc_sqs_message_api_key_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_nc_sqs_message_log_deduplication_id character varying(255),
    api_key character varying(250),
    status smallint,
    record_status smallint DEFAULT '1'::smallint,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

