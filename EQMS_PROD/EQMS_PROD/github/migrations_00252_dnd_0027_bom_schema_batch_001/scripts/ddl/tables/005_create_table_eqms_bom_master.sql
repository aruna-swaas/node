CREATE TABLE dnd.eqms_bom_master (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    major_version integer,
    minor_version integer,
    fk_eqms_organization_product_id integer,
    fk_eqms_bom_publish_status_lk_id integer,
    fk_eqms_bom_type_lk_id integer,
    fk_eqms_bom_snapshot_id integer 
);

