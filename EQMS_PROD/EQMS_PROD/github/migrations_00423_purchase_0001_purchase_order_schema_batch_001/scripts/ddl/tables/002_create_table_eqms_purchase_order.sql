CREATE TABLE purchase.eqms_purchase_order (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_purchase_order_type_lk_id integer,
    po_number character varying(100),
    po_date timestamp without time zone,
    tentative_delivery_date timestamp without time zone,
    quotation_reference character varying(100),
    fk_eqms_vendor_id integer,
    total_ex_work numeric(12,2),
    packaging_transport numeric(12,2),
    sub_total numeric(12,2),
    gst numeric(12,2),
    total_amount numeric(12,2),
    version numeric(10,1) DEFAULT 1.0,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_status_lk_id integer 
);

