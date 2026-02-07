CREATE TABLE workflow.eqms_workflow (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_workflow_template_id integer,
    status smallint,
    version numeric(10,1) DEFAULT 1.0,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_workflow_status_ref_id integer 
);

