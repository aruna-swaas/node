CREATE TABLE qc.eqms_incoming_inspection_software_result (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_incoming_inspection_part_details_id integer,
    fk_eqms_software_test_procedure_spec_id integer,
    actual_output character varying,
    fk_eqms_verification_result_lk_id integer,
    observation character varying,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

