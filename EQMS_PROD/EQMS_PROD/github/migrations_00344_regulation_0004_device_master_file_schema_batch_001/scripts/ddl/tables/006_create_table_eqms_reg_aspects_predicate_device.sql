CREATE TABLE regulation.eqms_reg_aspects_predicate_device (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_reg_device_product_specification_aspects_id integer,
    fk_eqms_reg_device_product_specification_id integer,
    predicate_device_company character varying,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

