CREATE TABLE abac.eqms_object (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    object_type character varying(50) NOT NULL,
    object_name character varying(255) NOT NULL,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    is_context_driven smallint,
    object_description character varying(255),
    entity_id integer,
    fk_eqms_owner_id integer,
    ref_id integer 
);

