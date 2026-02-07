CREATE TABLE sales.eqms_order_approval_mode_lk_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_order_approval_mode_lk_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    approval_mode_code character varying(20),
    approval_mode_name character varying(100),
    approval_mode_description character varying(500),
    approval_mode_type character varying(100),
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

