CREATE TABLE organization.eqms_design_stage_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_organization_id integer,
    design_stage character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    eqms_tenant_key integer,
    fk_eqms_design_stage_type_lk_id integer,
    source character varying(50),
    ref_id integer 
);

