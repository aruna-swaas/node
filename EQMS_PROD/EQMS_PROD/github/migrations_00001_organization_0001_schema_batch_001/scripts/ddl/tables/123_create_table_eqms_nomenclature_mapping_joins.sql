CREATE TABLE organization.eqms_nomenclature_mapping_joins (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    fk_eqms_entity_nomenclature_mapping_id integer,
    join_order integer,
    join_table character varying(255),
    join_on_left character varying(255),
    join_on_right character varying(255),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_nomenclature_join_type_id integer 
);

