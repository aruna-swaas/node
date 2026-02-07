CREATE TABLE organization.eqms_nomenclature_sequence_defs (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    sequence_name character varying(100) DEFAULT 'default'::character varying,
    increment_by integer DEFAULT 1,
    min_value integer DEFAULT 1,
    max_value integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

