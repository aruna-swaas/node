CREATE TABLE organization.eqms_nomenclature_mapping_conditions (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_entity_nomenclature_mapping_id integer,
    fk_eqms_mapping_join_id integer,
    condition_order integer,
    condition_expression character varying,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

