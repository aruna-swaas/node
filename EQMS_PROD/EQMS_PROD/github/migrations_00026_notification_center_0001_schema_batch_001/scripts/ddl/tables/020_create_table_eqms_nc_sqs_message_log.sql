CREATE TABLE notification_center.eqms_nc_sqs_message_log (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    message_group_id character varying(255),
    message_deduplication_id character varying(255),
    sqs_params text,
    sqs_request_id character varying(255),
    sqs_md5_of_message_body character varying(255),
    sqs_message_id character varying(255),
    sqs_sequence_number character varying(255),
    sqs_status character varying(50),
    sqs_response text,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

