CREATE TABLE organization.eqms_pre_prod_incoming_inspection_spec_criteria_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pre_prod_incoming_inspection_spec_group_lk_id integer,
    ref_id integer,
    criteria character varying(500),
    group_criteria_type character varying(50),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

