CREATE TABLE organization.eqms_order_approval_mode_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    approval_mode_code character varying(20),
    approval_mode_name character varying(100),
    approval_mode_description character varying(500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    approval_mode_type character varying(100) 
);

