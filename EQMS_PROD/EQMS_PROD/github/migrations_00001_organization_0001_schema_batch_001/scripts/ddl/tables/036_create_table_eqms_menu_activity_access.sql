CREATE TABLE organization.eqms_menu_activity_access (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_menu_lk_ref_id integer,
    fk_eqms_activity_lk_ref_id integer,
    access_status smallint,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    ref_id integer 
);

