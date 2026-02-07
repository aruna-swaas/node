CREATE TABLE organization.eqms_part_location_details (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_part_lk_id integer,
    floor character varying,
    room character varying,
    shelf_details character varying,
    unit_name character varying,
    address character varying,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

