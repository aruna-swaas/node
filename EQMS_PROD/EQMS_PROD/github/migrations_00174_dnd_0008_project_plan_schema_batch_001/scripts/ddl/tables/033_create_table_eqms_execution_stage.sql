CREATE TABLE dnd.eqms_execution_stage (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_build_stage_order_id integer,
    execution_stage_description character varying(100),
    execution_stage_type smallint,
    other_details character varying(100),
    additional_design_quality_requirement character varying(100),
    advisory character varying(100),
    regulatory_applicability_indicator smallint,
    verification_method character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    units_to_be_verified integer,
    remarks character varying,
    conclusion character varying 
);

