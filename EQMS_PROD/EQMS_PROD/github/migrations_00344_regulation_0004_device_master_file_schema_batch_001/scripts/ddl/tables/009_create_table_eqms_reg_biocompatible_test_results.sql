CREATE TABLE regulation.eqms_reg_biocompatible_test_results (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_reg_device_verification_validation_id integer,
    std_ref character varying,
    scope_of_plan character varying,
    result character varying,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

