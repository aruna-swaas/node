CREATE TABLE dnd.eqms_license_initiation (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_project_id integer,
    is_initiated smallint,
    fk_eqms_license_status_lk_id integer 
);

