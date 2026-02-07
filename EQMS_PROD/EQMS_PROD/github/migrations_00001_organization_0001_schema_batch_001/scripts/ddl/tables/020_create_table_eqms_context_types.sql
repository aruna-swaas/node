CREATE TABLE organization.eqms_context_types (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    context_name character varying(50),
    context_description character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    context_slug character varying(100),
    ref_id integer 
);

