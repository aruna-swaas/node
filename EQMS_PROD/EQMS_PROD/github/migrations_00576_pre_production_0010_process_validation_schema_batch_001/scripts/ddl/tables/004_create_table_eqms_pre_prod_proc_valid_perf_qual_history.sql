CREATE TABLE pre_production.eqms_pre_prod_proc_valid_perf_qual_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_pre_prod_proc_valid_perf_qual_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pre_prod_process_validation_id integer,
    critical_parameter character varying,
    optimum_range character varying,
    value_set character varying,
    fk_eqms_verification_result_lk_id integer,
    fk_eqms_status_lk_id smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

