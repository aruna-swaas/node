CREATE TABLE risk_management.eqms_rmp_production_post_production_info (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_id integer NOT NULL,
    feedback_production_manufacturing_actions character varying(3500),
    outgoing_quality_control_actions character varying(3500),
    customer_end_user_feedback_actions character varying(3500),
    formal_complaints_actions character varying(3500),
    adverse_events_safety_incidents_actions character varying(3500),
    post_market_surveillance_actions character varying(3500),
    post_market_clinical_followup_actions character varying(3500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

