CREATE TABLE workflow.eqms_project_type_task_group (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_type_id integer,
    task_group_name character varying(50),
    group_execution_rule jsonb,
    group_exit_criteria jsonb,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    ref_id integer 
);

