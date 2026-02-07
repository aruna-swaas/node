CREATE TABLE infrastructure.eqms_infrastructure_qualification (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_infrastructure_qualification_checklist_id integer,
    fk_eqms_maintenance_service_type_lk_id integer,
    application_of_infrastructure character varying(3500),
    qualification_procedure_criteria character varying(3500),
    inspection_date timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_status_lk_id integer 
);

