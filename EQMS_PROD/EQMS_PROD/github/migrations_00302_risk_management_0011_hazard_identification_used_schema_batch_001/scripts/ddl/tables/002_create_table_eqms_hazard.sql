CREATE TABLE risk_management.eqms_hazard (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    hazard_code character varying(50),
    event_description character varying(3500),
    harm_description character varying(3500),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_risk_subcategory_applicability_id integer 
);

