CREATE TABLE infrastructure.eqms_process_validation_oqc_worst_case_details (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_process_validation_oqc_id integer,
    critical_parameter character varying(3500),
    worst_case_setting character varying(3500),
    result_expected character varying(3500),
    result_measured_later character varying(3500),
    fk_eqms_status_lk_id integer,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

