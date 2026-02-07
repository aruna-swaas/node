CREATE TABLE pre_production.eqms_pre_prod_set_burn_in (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    is_burn_in_required smallint,
    description character varying,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_project_product_variants_id integer 
);

