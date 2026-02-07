CREATE TABLE dms.eqms_record_variable_mapper (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    form_table_name character varying(100),
    form_column_name character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_record_variables_id integer,
    form_condition jsonb 
);

