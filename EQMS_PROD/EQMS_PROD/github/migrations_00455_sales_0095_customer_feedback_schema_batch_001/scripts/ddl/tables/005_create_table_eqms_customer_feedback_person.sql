CREATE TABLE sales.eqms_customer_feedback_person (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_customer_feedback_id integer,
    encrypted_person_name character varying,
    person_role character varying(255),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

