CREATE TABLE abac.eqms_form_dependencies (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_form_dependency_type_lk_id integer,
    fk_eqms_dependent_form_id integer,
    fk_eqms_prerequisite_form_id integer,
    condition_config jsonb,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

