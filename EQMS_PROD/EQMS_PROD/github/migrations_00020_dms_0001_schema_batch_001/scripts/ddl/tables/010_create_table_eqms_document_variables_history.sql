CREATE TABLE dms.eqms_document_variables_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_document_variables_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_variable_value_image_id integer,
    fk_eqms_document_sections_id integer,
    fk_eqms_variable_id integer,
    variable_value_text character varying(100),
    variable_value_json jsonb,
    status smallint,
    record_status smallint DEFAULT '1'::smallint,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

