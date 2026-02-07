CREATE TABLE risk_management.eqms_rmp_patient_anatomical_scope (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_risk_management_plan_id integer NOT NULL,
    body_part character varying(100),
    type_of_tissue character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

