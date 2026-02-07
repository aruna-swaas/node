CREATE TABLE workflow.eqms_project_instance_header (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_workflow_id integer,
    fk_eqms_project_type_id integer,
    fk_eqms_project_instance_id integer,
    version numeric(10,1) DEFAULT 1.0,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

