CREATE TABLE sales.eqms_order_acknowledgement (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_quotation_id integer,
    fk_eqms_order_approval_mode_lk_id integer,
    order_number character varying(100),
    expected_delivery_date timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    order_date timestamp without time zone,
    fk_eqms_status_lk_id integer 
);

