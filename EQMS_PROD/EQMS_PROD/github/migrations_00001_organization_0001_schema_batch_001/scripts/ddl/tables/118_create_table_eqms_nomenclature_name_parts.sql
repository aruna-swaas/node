CREATE TABLE organization.eqms_nomenclature_name_parts (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    fk_eqms_entity_template_id integer,
    part_value character varying(255),
    part_order integer,
    fk_eqms_sequence_def_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_nomenclature_part_type_id integer 
);

