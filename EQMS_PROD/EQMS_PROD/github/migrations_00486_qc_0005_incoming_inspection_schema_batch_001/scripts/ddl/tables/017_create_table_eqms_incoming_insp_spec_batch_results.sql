CREATE TABLE qc.eqms_incoming_insp_spec_batch_results (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_incoming_inspection_batch_results_id integer,
    batch_unit_number integer,
    test_observation character varying(3500),
    fk_eqms_verification_result_lk_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_pre_prod_incoming_inspection_spec_criteria_id integer 
);

