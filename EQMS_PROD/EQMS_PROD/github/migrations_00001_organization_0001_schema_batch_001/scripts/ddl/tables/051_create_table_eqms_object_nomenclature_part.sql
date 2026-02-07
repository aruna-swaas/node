CREATE TABLE organization.eqms_object_nomenclature_part (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_object_nomenclature_id integer,
    fk_eqms_nomenclature_part_variable_id integer,
    part_value character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

