CREATE TABLE abac.eqms_policy_attributes (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_policy_id integer,
    subject_key character varying(255) NOT NULL,
    object_key character varying(255),
    attribute_type character varying(50),
    operator character varying(50),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

