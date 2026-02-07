CREATE TABLE risk_management.eqms_project_risk_probability_level (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_risk_probability_level_template_id integer,
    fk_eqms_project_id integer,
    level_name character varying(50),
    level_value numeric(10,5),
    numerator integer,
    denominator integer,
    description character varying(3500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

