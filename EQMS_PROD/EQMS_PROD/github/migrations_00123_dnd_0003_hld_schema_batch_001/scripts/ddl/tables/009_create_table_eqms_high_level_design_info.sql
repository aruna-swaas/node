CREATE TABLE dnd.eqms_high_level_design_info (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_high_level_design_id integer,
    product_application character varying(100),
    market_scenario character varying(100),
    competitive_products character varying(2500),
    market_size character varying(100),
    target_geography character varying(100),
    target_segment character varying(100),
    target_audience character varying(100),
    initial_success_factors character varying(100),
    growth_sustaining_factors character varying(100),
    strategic_marketing_requirements character varying(100),
    demand_generation_plan character varying(100),
    potential_business_risks character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_organization_id integer 
);

