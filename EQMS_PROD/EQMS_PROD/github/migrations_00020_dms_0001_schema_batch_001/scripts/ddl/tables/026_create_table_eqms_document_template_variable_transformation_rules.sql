CREATE TABLE dms.eqms_document_template_variable_transformation_rules (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_document_template_variable_id integer,
    fk_eqms_document_variable_operation_id integer,
    "order" integer,
    parameters jsonb,
    condition jsonb,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

