CREATE TABLE risk_management.eqms_risk_stage_review (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_risk_review_requirment_id integer,
    description character varying(3500),
    is_acknowledge smallint,
    review_date timestamp without time zone,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

