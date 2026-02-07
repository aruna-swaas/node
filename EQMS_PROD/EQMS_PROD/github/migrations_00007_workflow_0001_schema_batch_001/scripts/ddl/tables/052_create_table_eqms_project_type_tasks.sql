CREATE TABLE workflow.eqms_project_type_tasks (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_type_id integer,
    task_name character varying(255),
    task_stage_order integer,
    task_order integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    has_subtask smallint,
    task_data jsonb,
    fk_eqms_workflow_task_status_id integer,
    task_description character varying(3500),
    ref_id integer,
    fk_eqms_default_workflow_task_status_id integer 
);

