CREATE TABLE dnd.eqms_high_level_design_comp_landscape (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_high_level_design_id integer,
    market_segment character varying(100),
    major_competitor character varying(100),
    segment_share numeric(10,1),
    price_range character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_organization_id integer 
);

