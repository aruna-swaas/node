CREATE TABLE notification_center.eqms_nc_schedule_variable_config (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_nc_schedule_id integer,
    variable_name character varying(255),
    variable_value text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

