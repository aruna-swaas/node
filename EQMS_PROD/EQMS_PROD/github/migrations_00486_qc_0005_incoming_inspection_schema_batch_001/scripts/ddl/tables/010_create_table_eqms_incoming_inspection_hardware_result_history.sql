CREATE TABLE qc.eqms_incoming_inspection_hardware_result_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_incoming_inspection_hardware_result_id integer NOT NULL,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_incoming_inspection_part_details_id integer,
    fk_eqms_hardware_test_procedure_spec_id integer,
    reading_monitored character varying,
    cause_stages character varying,
    fk_eqms_failure_type_lk_id integer,
    fk_eqms_verification_result_lk_id integer,
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

