CREATE TABLE vendor.eqms_sample_inspection_procedure_files_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_sample_inspection_procedure_files_id integer NOT NULL,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_sample_order_inspection_id integer,
    fk_eqms_sample_order_inspection_supporting_files_id integer,
    status smallint,
    version numeric(10,1),
    record_status smallint DEFAULT 1,
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

