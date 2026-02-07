CREATE TABLE organization.eqms_design_specification_type_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_organization_id integer,
    specification_type character varying(100),
    description character varying(1500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    eqms_tenant_key integer,
    slug character varying(100),
    ref_id integer,
    fk_eqms_report_type_lk_id integer 
);

