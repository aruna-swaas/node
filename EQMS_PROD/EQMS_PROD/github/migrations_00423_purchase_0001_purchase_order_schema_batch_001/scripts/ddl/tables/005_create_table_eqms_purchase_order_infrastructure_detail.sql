CREATE TABLE purchase.eqms_purchase_order_infrastructure_detail (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer NOT NULL,
    fk_eqms_organization_id integer NOT NULL,
    fk_eqms_infrastructure_type_id integer,
    quantity integer,
    unit_rate numeric(18,2),
    price numeric(18,2),
    model_no character varying(1500),
    fk_eqms_status_lk_id integer,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_purchase_infrastructure_request_id integer 
);

