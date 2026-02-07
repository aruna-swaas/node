CREATE TABLE qc.eqms_hardware_test_procedure_spec (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_part_lk_id integer,
    hardware_description character varying,
    hardware_type character varying,
    ideal_value integer,
    tolerance_min_value integer,
    tolerance_max_value integer,
    unit integer,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

