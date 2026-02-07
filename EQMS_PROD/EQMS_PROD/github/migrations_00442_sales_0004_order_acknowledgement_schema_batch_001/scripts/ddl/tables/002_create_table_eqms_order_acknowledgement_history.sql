CREATE TABLE sales.eqms_order_acknowledgement_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_order_acknowledgement_id integer NOT NULL,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_quotation_id integer,
    fk_eqms_order_approval_mode_lk_id integer,
    order_number character varying(100),
    expected_delivery_date timestamp without time zone,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    order_date timestamp without time zone,
    fk_eqms_status_lk_id integer 
);

