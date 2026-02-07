CREATE TABLE organization.eqms_cus_feedback_criteria_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    criteria character varying(100),
    feedback_group_criteria_type character varying(50),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_cus_feedback_group_lk_id integer 
);

