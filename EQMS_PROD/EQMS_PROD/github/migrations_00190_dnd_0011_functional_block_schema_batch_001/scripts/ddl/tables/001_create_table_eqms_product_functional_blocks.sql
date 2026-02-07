CREATE TABLE dnd.eqms_product_functional_blocks (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_project_id integer,
    functional_block_title character varying(100),
    functional_block_description text,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer 
);

