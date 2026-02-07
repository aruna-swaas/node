CREATE TABLE dnd.eqms_project_plan_schedule (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_plan_id integer,
    description text,
    activity_start_date date,
    activity_end_date date,
    activity_duration integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_project_stage_activity_id integer 
);

