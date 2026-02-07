CREATE TABLE workflow.eqms_workflow_status_transition_role_mapper (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_workflow_status_transition_id integer,
    fk_eqms_role_lk_ref_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

