CREATE TABLE workflow.eqms_project_tasks_level (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_child_task_id integer,
    fk_eqms_parent_task_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    level integer 
);

