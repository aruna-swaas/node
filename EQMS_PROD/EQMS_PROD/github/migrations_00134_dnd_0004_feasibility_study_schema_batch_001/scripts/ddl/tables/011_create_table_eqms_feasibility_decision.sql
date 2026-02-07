CREATE TABLE dnd.eqms_feasibility_decision (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_feasibility_decision_lk_id integer,
    fk_eqms_feasibility_study_report_id integer,
    comments character varying(500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

