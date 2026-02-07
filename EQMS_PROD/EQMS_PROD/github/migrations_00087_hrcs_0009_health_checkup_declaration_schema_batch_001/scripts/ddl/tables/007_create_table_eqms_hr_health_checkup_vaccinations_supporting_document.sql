CREATE TABLE hrcs.eqms_hr_health_checkup_vaccinations_supporting_document (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_hr_health_checkup_id integer,
    fk_eqms_file_id integer,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_date timestamp without time zone,
    modified_by integer 
);

