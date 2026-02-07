CREATE TABLE infrastructure.eqms_process_validation_pqc_details (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_process_validation_pqc_id integer,
    fk_eqms_verification_result_lk_id integer,
    critical_parameter character varying(3500),
    optimum_range character varying(3500),
    value_set character varying(3500),
    fk_eqms_status_lk_id integer,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

