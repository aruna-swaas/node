CREATE TABLE purchase.eqms_purchase_order_part_detail (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_purchase_order_id integer,
    quantity integer,
    unit_rate numeric(10,1),
    price numeric(12,2),
    fk_eqms_status_lk_id integer,
    special_instructions character varying,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_part_lk_id integer 
);

