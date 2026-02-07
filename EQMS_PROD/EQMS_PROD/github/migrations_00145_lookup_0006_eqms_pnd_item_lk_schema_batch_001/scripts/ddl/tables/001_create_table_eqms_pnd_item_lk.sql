CREATE TABLE organization.eqms_pnd_item_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    pnd_item character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    pnd_item_category character varying(100),
    pnd_item_identifier character varying(100),
    ref_id integer 
);

