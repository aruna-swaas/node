CREATE TABLE sales.eqms_customer_feedback_criteria_detail (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_customer_feedback_criteria_id integer,
    fk_eqms_cus_feedback_criteria_lk_id integer,
    fk_eqms_status_lk_id integer,
    display_order integer,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

