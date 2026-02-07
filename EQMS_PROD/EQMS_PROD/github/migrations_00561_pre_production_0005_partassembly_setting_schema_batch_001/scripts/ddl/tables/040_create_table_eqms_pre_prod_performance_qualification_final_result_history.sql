CREATE TABLE pre_production.eqms_pre_prod_performance_qualification_final_result_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_pre_prod_performance_qualification_final_result_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pre_prod_proc_valid_perf_qual_id integer,
    min_value character varying,
    max_value character varying,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

