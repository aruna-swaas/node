CREATE TABLE pre_production.eqms_pre_prod_packaging_storage_instruction_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_pre_prod_packaging_storage_instruction_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_storage_type_lk_id integer,
    is_dismantle_during_packing smallint,
    is_assemble_complete_unit smallint,
    specific_instruction character varying,
    remarks character varying,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_project_product_variants_id integer 
);

