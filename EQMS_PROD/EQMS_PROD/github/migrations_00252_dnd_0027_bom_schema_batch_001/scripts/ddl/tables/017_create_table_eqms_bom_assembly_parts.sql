CREATE TABLE dnd.eqms_bom_assembly_parts (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_bom_variant_master_id integer,
    fk_eqms_parent_bom_assembly_parts_id integer,
    fk_eqms_part_lk_id integer,
    quantity_per_unit numeric(10,1),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

