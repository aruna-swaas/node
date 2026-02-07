CREATE TABLE organization.eqms_object_nomenclature (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_object_id integer,
    fk_eqms_nomenclature_id integer,
    object_type character varying(100),
    standardized_name character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

