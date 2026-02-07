CREATE TABLE dnd.eqms_project_plan_procedure_reference (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_plan_id integer,
    fk_eqms_dnd_document_lk_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    is_applicable smallint 
);

