CREATE TABLE abac.eqms_policy (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    name character varying(255) NOT NULL,
    description text,
    access_type character varying(10),
    logical_gate character varying(20),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    ref_id integer 
);

