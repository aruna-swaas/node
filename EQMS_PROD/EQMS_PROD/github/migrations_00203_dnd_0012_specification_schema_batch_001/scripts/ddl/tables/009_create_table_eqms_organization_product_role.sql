CREATE TABLE dnd.eqms_organization_product_role (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_organization_product_id integer,
    fk_eqms_organization_role_lk_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    product_role_order smallint 
);

