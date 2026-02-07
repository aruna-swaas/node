CREATE TABLE dnd.eqms_bom_assembly_parts_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_bom_assembly_parts_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_bom_variant_master_id integer,
    fk_eqms_parent_bom_assembly_parts_id integer,
    fk_eqms_part_lk_id integer,
    quantity_per_unit numeric(10,1),
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

