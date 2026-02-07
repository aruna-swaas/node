CREATE TABLE sales.eqms_delivery_dispatch (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_quotation_id integer,
    delivery_instruction_id character varying(100),
    invoice_location character varying(255),
    encrypted_ship_to_contact_person character varying,
    encrypted_ship_to_address character varying,
    encrypted_ship_to_location character varying,
    remarks_special_instruction character varying,
    product_configuration character varying,
    expected_shipping_date timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_status_lk_id integer 
);

