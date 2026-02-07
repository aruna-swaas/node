CREATE TABLE dnd.eqms_pilot_validation_plan (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_execution_stage_id integer,
    validation_plan_details character varying(100),
    purpose_of_validation character varying(100),
    function character varying(100),
    units_to_be_validated integer,
    period_of_usage character varying(100),
    unit_configuration character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_feedback_file_id integer 
);

