CREATE TABLE dms.eqms_document_variable_mapper (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_document_template_variable_id integer,
    form_table_name character varying(250),
    form_column_name character varying(100),
    form_condition jsonb,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    value_type character varying(15) 
);

