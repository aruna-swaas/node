CREATE TABLE organization.eqms_nomenclature_sequence_counters (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_sequence_def_id integer,
    scope_key_value character varying(255),
    current_value integer DEFAULT 0,
    last_generated_at timestamp without time zone,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

