CREATE TABLE pre_production.eqms_pre_prod_bom_assembly_part_item_details (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    aql character varying(2500),
    visual character varying(2500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_part_quantity_type_lk_id integer,
    fk_eqms_bom_part_type_lk_id integer,
    fk_eqms_equipment_lk_id integer,
    fk_eqms_inspection_procedure_id integer,
    fk_eqms_bom_assembly_parts_id integer,
    fk_eqms_project_id integer 
);

