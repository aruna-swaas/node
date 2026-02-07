CREATE TABLE dnd.eqms_lifetime_calculation_criteria (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_product_life_declaration_id integer,
    part_no character varying(25),
    description character varying(500),
    remarks character varying(500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    data_sheet character varying(3500) 
);

