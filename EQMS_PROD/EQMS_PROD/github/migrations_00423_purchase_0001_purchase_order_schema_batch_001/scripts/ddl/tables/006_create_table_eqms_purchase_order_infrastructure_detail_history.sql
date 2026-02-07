CREATE TABLE purchase.eqms_purchase_order_infrastructure_detail_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_purchase_order_infrastructure_detail_id integer,
    eqms_tenant_key integer,
    fk_eqms_infrastructure_type_id integer,
    quantity integer,
    unit_rate numeric(18,2),
    price numeric(18,2),
    model_no character varying(1500),
    fk_eqms_status_lk_id integer,
    special_instructions character varying,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_purchase_infrastructure_request_id integer,
    fk_eqms_organization_id integer 
);

