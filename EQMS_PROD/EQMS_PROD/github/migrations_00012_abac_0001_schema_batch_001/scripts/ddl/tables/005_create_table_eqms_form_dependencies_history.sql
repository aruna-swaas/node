CREATE TABLE abac.eqms_form_dependencies_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_form_dependencies_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_form_dependency_type_lk_id integer,
    fk_eqms_dependent_form_id integer,
    fk_eqms_prerequisite_form_id integer,
    condition_config jsonb,
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

