CREATE TABLE pre_production.eqms_pre_prod_final_oqc_pack_prot_model_mapper (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_project_product_variants_id integer 
);

