CREATE TABLE dnd.eqms_pilot_validation_plan_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_pilot_validation_plan_id integer,
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
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_feedback_file_id integer 
);

