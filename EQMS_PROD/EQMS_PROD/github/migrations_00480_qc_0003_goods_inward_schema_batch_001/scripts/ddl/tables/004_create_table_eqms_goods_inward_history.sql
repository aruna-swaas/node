CREATE TABLE qc.eqms_goods_inward_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_goods_inward_id integer NOT NULL,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    received_date timestamp without time zone,
    fk_eqms_status_lk_id integer,
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_purchase_order_id integer 
);

