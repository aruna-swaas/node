CREATE TABLE risk_management.eqms_rmp_patient_population (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_risk_management_plan_id integer NOT NULL,
    fk_eqms_gender_lk_id integer NOT NULL,
    age_range character varying(50),
    disease_state character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

