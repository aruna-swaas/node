CREATE TABLE pre_production.eqms_pre_prod_jig_fixture_acceptance_criteria (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pre_prod_jig_fixture_validation_id integer,
    acceptance_criteria character varying,
    expected_result character varying,
    fk_eqms_status_lk_id integer,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

