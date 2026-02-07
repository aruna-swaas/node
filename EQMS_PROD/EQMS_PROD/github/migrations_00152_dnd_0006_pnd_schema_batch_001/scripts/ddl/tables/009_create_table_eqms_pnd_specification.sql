CREATE TABLE dnd.eqms_pnd_specification (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_product_need_document_id integer,
    pnd_parameter character varying(100),
    pnd_specification character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_organization_id integer 
);

