CREATE TABLE notification_center.eqms_nc_retry_config (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_nc_provider_type_master_id integer,
    fk_eqms_nc_provider_channel_master_id integer,
    fk_eqms_nc_provider_header_id integer,
    retry_count integer,
    retry_duration integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

