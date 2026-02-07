CREATE TABLE workflow.eqms_project_workflow_journey_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_project_workflow_journey_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    status smallint,
    record_status smallint DEFAULT '1'::smallint,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_project_task_id integer,
    fk_eqms_project_instance_header_id integer,
    fk_eqms_task_rule_action_id integer 
);

