CREATE TABLE dnd.eqms_product_applicable_clause (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_regulation_standard_clause_id integer,
    fk_eqms_organization_product_id integer,
    is_applicable smallint,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

