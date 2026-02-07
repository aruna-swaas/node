CREATE TABLE organization.eqms_entity_template (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    fk_eqms_nomenclature_category_id integer,
    entity_title character varying(255),
    entity_version numeric(10,2) DEFAULT 1.0,
    slug character varying(255),
    is_annexure boolean DEFAULT false,
    fk_parent_entity_id integer,
    fk_eqms_module_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

