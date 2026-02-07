CREATE TABLE organization.eqms_nomenclature_delimiter (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_entity_template_id integer,
    fk_eqms_organization_id integer,
    delimiter character varying(10) DEFAULT '-'::character varying,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

