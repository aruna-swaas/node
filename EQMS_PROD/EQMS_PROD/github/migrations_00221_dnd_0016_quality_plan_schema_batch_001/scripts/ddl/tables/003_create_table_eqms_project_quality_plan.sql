CREATE TABLE dnd.eqms_project_quality_plan (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_project_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    eqms_tenant_key integer,
    fk_eqms_project_build_stage_order_id integer,
    quality_objective character varying(100),
    test_method_acceptance_criteria character varying(100),
    fk_eqms_organization_id integer 
);

