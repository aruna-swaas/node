CREATE TABLE workflow.eqms_project_workflow_journey (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_project_task_id integer,
    fk_eqms_project_instance_header_id integer,
    fk_eqms_task_rule_action_id integer 
);

