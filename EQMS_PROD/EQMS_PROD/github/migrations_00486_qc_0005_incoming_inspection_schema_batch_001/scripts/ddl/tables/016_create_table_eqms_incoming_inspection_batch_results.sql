CREATE TABLE qc.eqms_incoming_inspection_batch_results (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_incoming_inspection_results_id integer,
    batch_number character varying(1500),
    units_failed_count integer,
    fk_eqms_verification_result_lk_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

