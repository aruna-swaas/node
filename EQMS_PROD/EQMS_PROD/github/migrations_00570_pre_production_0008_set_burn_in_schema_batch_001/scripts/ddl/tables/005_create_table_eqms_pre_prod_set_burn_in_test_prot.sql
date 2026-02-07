CREATE TABLE pre_production.eqms_pre_prod_set_burn_in_test_prot (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pre_prod_feature_model_mapper_id integer,
    fk_eqms_pre_prod_set_burn_in_id integer,
    process_name character varying(50),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

