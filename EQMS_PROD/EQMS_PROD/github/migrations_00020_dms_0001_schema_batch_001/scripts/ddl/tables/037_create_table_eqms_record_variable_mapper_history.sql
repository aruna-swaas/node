CREATE TABLE dms.eqms_record_variable_mapper_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_record_variable_mapper_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    form_table_name character varying(100),
    form_column_name character varying(100),
    status smallint,
    record_status smallint DEFAULT '1'::smallint,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_record_variables_id integer,
    form_condition jsonb 
);

