CREATE TABLE organization.eqms_part_category_subclass_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    fk_eqms_part_subcategory_type_lk_id integer,
    part_category_subclass character varying(250),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

