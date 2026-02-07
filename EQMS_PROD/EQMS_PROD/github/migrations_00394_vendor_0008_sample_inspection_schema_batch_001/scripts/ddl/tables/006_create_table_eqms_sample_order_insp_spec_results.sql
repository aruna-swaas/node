CREATE TABLE vendor.eqms_sample_order_insp_spec_results (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    serial_number character varying(100),
    fk_eqms_verification_result_lk_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_sample_order_inspection_specification_id integer,
    test_observation character varying(3500) 
);

