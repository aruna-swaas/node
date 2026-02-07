CREATE TABLE dnd.eqms_dig_specification_country_mapper (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_reg_country_lk_id integer,
    fk_eqms_dig_specification_id integer,
    status smallint,
    created_date timestamp(6) without time zone,
    created_by integer,
    modified_date timestamp(6) without time zone,
    modified_by integer 
);

