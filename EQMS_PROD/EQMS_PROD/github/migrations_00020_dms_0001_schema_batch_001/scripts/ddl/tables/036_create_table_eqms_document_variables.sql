CREATE TABLE dms.eqms_document_variables (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_variable_value_image_id integer,
    fk_eqms_document_sections_id integer,
    fk_eqms_variable_id integer,
    variable_value_text character varying(100),
    variable_value_json jsonb,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

