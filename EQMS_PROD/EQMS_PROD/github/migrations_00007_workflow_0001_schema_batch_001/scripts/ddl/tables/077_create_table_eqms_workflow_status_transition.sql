CREATE TABLE workflow.eqms_workflow_status_transition (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_workflow_id integer,
    fk_eqms_workflow_old_task_status_id integer,
    fk_eqms_workflow_new_task_status_id integer,
    branch_condition jsonb,
    branch_condition_result character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_form_required_role_type_lk_id integer,
    required_system_roles jsonb,
    required_project_roles jsonb,
    fallback_to_system_role boolean DEFAULT true,
    fk_eqms_transition_owner_type_lk_id integer 
);

