CREATE TABLE workflow.eqms_project_workflow_journey_role_mapper (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_workflow_journey_id integer,
    fk_eqms_project_member_role_id integer,
    fk_eqms_role_lk_ref_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_current_workflow_task_status_id integer,
    fk_eqms_user_id integer,
    assigned_date timestamp without time zone 
);

