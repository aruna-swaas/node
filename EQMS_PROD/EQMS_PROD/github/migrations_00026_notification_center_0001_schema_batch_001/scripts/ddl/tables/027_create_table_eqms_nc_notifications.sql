CREATE TABLE notification_center.eqms_nc_notifications (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_nc_template_header_id integer,
    notification_status character varying(50),
    total_notifications_sent integer,
    success_count integer,
    failure_count integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

