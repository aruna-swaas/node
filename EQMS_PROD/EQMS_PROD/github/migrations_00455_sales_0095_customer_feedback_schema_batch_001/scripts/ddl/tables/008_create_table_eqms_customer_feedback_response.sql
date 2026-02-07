CREATE TABLE sales.eqms_customer_feedback_response (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_customer_feedback_id integer,
    fk_eqms_customer_feedback_criteria_detail_id integer,
    fk_eqms_feedback_rating_id integer,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

