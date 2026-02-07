CREATE TABLE workflow.eqms_workflow_status_transition_template (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_organization_workflow_template_id integer,
    fk_eqms_workflow_old_task_status_id integer,
    fk_eqms_workflow_new_task_status_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_transition_owner_type_lk_id integer,
    ref_id integer 
);

