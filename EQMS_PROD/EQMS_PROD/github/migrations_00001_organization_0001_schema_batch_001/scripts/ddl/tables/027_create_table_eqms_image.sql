CREATE TABLE organization.eqms_image (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    image_format character varying(15),
    image_resolution character varying(15),
    preview_link character varying(1024),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_organization_id integer,
    fk_eqms_file_id integer 
);

