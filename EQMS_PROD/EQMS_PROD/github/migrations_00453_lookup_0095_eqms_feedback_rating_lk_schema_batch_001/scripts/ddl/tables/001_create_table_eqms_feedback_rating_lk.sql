CREATE TABLE organization.eqms_feedback_rating_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    rating_name character varying(100),
    status smallint,
    created_by integer NOT NULL,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

