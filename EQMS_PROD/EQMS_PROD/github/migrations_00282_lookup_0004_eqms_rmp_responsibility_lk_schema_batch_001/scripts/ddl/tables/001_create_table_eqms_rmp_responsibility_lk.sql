CREATE TABLE organization.eqms_rmp_responsibility_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    responsibility_name character varying(100),
    description character varying(1500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_rmp_applicable_stage_lk_id integer,
    slug character varying(100) 
);

