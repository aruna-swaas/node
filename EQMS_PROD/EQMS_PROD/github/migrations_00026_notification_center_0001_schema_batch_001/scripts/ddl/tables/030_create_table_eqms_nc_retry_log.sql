CREATE TABLE notification_center.eqms_nc_retry_log (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_nc_retry_config_id integer,
    fk_eqms_nc_notifications_id integer,
    retry_attempt_count integer,
    retry_attempt_status character varying(100),
    sent_at timestamp without time zone,
    delivered_at timestamp without time zone,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

