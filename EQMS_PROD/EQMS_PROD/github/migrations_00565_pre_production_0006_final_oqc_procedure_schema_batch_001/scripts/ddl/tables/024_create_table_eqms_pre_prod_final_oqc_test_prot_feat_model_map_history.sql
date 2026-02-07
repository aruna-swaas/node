CREATE TABLE pre_production.eqms_pre_prod_final_oqc_test_prot_feat_model_map_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_pre_prod_final_oqc_test_prot_feat_model_map_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pre_prod_feature_model_mapper_id integer,
    process_name character varying(3500),
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

