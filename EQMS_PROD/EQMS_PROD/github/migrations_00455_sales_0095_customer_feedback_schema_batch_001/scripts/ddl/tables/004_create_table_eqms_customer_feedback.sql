CREATE TABLE sales.eqms_customer_feedback (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_organization_product_id integer,
    fk_eqms_customer_master_id integer,
    fk_eqms_order_acknowledgement_id integer,
    product_serial_number character varying(100),
    installation_date timestamp without time zone,
    fk_eqms_feedback_source_id integer,
    feedback_date timestamp without time zone,
    fk_eqms_organization_employee_id integer,
    feedback text,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_status_lk_id integer 
);

