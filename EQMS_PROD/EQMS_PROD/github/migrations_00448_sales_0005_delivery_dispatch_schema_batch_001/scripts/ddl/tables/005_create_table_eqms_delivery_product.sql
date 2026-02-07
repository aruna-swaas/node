CREATE TABLE sales.eqms_delivery_product (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_delivery_dispatch_id integer,
    fk_eqms_quotation_product_id integer,
    number_of_units integer,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

