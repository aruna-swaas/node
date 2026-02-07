CREATE TABLE dnd.eqms_bom_assembly_part_details (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_bom_assembly_parts_id integer,
    fk_eqms_alternative_part_number_id integer,
    fk_eqms_part_purchase_type_lk_id integer,
    fk_eqms_part_type_lk_id integer,
    manufacturer_name character varying(255),
    mfg_part_number character varying(100),
    fk_eqms_part_component_type_lk_id integer,
    fk_eqms_part_quantity_type_lk_id integer,
    fk_eqms_assembly_type_lk_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

