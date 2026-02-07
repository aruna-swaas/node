CREATE TABLE infrastructure.eqms_process_validation_oqc_best_case_details_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_process_validation_oqc_best_case_details_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_process_validation_oqc_id integer,
    critical_parameter character varying(3500),
    best_case_setting character varying(3500),
    result_expected character varying(3500),
    result_measured_later character varying(3500),
    fk_eqms_status_lk_id integer,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

