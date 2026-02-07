CREATE TABLE infrastructure.eqms_infrastructure_qualification_checklist_items (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_infrastructure_qualification_checklist_id integer,
    fk_eqms_status_lk_id integer,
    test_performed character varying(255),
    acceptance_criteria text,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

