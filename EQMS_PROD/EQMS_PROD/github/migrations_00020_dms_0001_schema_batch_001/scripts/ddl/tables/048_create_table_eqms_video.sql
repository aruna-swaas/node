CREATE TABLE dms.eqms_video (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_thumbnail_eqms_image_id integer,
    video_format character varying(15),
    video_resolution character varying(15),
    video_duration numeric(7,2),
    preview_link character varying(1024),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_file_id integer,
    fk_eqms_organization_id integer 
);

