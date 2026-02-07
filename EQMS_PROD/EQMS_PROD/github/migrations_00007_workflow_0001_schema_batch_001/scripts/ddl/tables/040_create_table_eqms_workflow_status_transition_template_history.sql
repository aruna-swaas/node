CREATE TABLE workflow.eqms_workflow_status_transition_template_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_workflow_status_transition_template_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_organization_workflow_template_id integer,
    fk_eqms_workflow_old_task_status_id integer,
    fk_eqms_workflow_new_task_status_id integer,
    status smallint,
    record_status smallint DEFAULT '1'::smallint,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_transition_owner_type_lk_id integer 
);

