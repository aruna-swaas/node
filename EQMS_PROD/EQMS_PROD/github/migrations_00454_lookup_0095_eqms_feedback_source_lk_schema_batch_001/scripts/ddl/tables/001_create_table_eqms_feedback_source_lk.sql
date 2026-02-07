CREATE TABLE organization.eqms_feedback_source_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    source_code character varying(20),
    source_name character varying(100),
    source_description character varying(500),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    source_type character varying(100) 
);

