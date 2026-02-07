CREATE TABLE risk_management.eqms_hazard_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_hazard_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    hazard_code character varying(50),
    event_description character varying(3500),
    harm_description character varying(3500),
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_risk_subcategory_applicability_id integer 
);

