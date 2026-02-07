CREATE TABLE organization.eqms_rm_comparison_operator_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    operator_name character varying(100),
    operator character varying(100),
    description character varying(2500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

