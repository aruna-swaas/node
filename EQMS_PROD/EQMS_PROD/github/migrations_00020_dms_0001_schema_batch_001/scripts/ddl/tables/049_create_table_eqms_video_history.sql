CREATE TABLE dms.eqms_video_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_video_id integer,
    eqms_tenant_key integer,
    fk_thumbnail_eqms_image_id integer,
    video_format character varying(15),
    video_resolution character varying(15),
    video_duration numeric(7,2),
    preview_link character varying(1024),
    status smallint,
    record_status smallint DEFAULT '1'::smallint,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_file_id integer,
    fk_eqms_organization_id integer 
);

