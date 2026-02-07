CREATE TABLE workflow.eqms_task_rule_task_creation (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    fk_eqms_task_rule_action_id integer,
    fk_eqms_project_type_tasks_id integer,
    task_link_strategy character varying(50),
    input_adapter character varying(50),
    creation_order integer,
    status smallint,
    created_date timestamp(6) without time zone,
    created_by integer,
    modified_date timestamp(6) without time zone,
    modified_by integer 
);

