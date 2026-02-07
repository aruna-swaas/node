CREATE TABLE qc.eqms_software_test_procedure_spec (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_part_lk_id integer,
    unit_test_case_description character varying,
    expected_output character varying,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

