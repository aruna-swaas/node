CREATE TABLE pre_production.eqms_pre_prod_product_traceability_card (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    is_product_traceability_required smallint,
    fk_eqms_pre_prod_bom_assembly_part_item_details_id integer 
);

