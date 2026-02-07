CREATE TABLE dnd.eqms_product_functional_subblocks (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_product_functional_block_id integer,
    subblock_title character varying(100),
    subblock_description text,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_organization_id integer 
);

