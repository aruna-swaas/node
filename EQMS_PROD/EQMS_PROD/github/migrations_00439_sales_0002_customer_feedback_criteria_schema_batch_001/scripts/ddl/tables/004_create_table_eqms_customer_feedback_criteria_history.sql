CREATE TABLE sales.eqms_customer_feedback_criteria_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_customer_feedback_criteria_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_organization_product_id integer,
    version numeric(10,1),
    record_status smallint DEFAULT 1,
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_status_lk_id integer 
);

