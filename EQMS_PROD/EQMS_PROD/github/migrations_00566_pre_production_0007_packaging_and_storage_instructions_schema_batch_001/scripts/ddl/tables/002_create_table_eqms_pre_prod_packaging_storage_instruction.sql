CREATE TABLE pre_production.eqms_pre_prod_packaging_storage_instruction (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_storage_type_lk_id integer,
    is_dismantle_during_packing smallint,
    is_assemble_complete_unit smallint,
    specific_instruction character varying,
    remarks character varying,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_project_product_variants_id integer 
);

