CREATE TABLE dnd.eqms_labelling_packaging_type_lk_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_labelling_packaging_type_lk_id integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    labelling_packaging_type character varying(500),
    type character varying(50),
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp(6) without time zone,
    valid_to_date timestamp(6) without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp(6) without time zone,
    created_by integer,
    modified_date timestamp(6) without time zone,
    modified_by integer 
);

