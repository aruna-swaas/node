CREATE TABLE dms.eqms_document_template (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_document_template_type_lk_id integer,
    document_template_name character varying(100),
    document_template_extension character varying(100),
    document_template_size character varying(100),
    document_template_watermark character varying(100),
    s3_bucket_name character varying(100),
    s3_object_key character varying(255),
    s3_uri character varying(255),
    template_version numeric(10,1),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    ref_id integer,
    fk_eqms_record_generation_mode_lk_id integer,
    container_id character varying(50) 
);

