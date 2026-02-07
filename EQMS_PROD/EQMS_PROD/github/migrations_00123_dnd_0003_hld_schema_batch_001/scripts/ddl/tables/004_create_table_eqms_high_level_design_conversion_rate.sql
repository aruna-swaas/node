CREATE TABLE dnd.eqms_high_level_design_conversion_rate (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_high_level_design_id integer,
    target_geography character varying(100),
    target_segment character varying(100),
    target_customer_segment integer,
    conversion_1 integer,
    conversion_2 integer,
    conversion_3 integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_organization_id integer 
);

