CREATE TABLE organization.eqms_hr_employment_type_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    employment_type character varying(50),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_date timestamp without time zone,
    modified_by integer,
    ref_id integer 
);

