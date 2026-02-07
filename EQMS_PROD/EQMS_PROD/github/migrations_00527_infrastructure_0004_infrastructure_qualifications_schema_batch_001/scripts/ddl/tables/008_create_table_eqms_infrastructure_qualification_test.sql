CREATE TABLE infrastructure.eqms_infrastructure_qualification_test (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_infrastructure_qualification_id integer,
    fk_eqms_infrastructure_qualification_checklist_items_id integer,
    fk_eqms_verification_result_lk_id integer,
    test_observation character varying(3500),
    status integer,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

