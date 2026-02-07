CREATE TABLE organization.eqms_timezones (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    timezone_name character varying(100),
    timezone_code character varying(10),
    utc_offset_in_minutes integer,
    has_dst character varying(10),
    dst_start timestamp without time zone,
    dst_end timestamp without time zone,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    date_format character varying(50),
    time_format character varying(50),
    ref_id integer 
);

