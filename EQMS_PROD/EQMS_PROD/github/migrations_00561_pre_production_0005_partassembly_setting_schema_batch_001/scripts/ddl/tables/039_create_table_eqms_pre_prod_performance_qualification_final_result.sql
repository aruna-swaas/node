CREATE TABLE pre_production.eqms_pre_prod_performance_qualification_final_result (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pre_prod_proc_valid_perf_qual_id integer,
    min_value character varying,
    max_value character varying,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

