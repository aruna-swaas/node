CREATE TABLE dms.eqms_record (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    record_watermark character varying(100),
    major_record_version integer,
    minor_record_version integer,
    record_version numeric(10,1),
    status smallint,
    version numeric(10,1) DEFAULT 1.0,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_record_type_lk_id integer,
    record_uploaded_date date,
    fk_eqms_document_template_history_id integer,
    fk_eqms_record_generation_type_lk_id integer,
    fk_eqms_file_history_id integer 
);

