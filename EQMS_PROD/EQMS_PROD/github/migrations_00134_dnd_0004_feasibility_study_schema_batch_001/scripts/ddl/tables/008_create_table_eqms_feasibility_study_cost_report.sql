CREATE TABLE dnd.eqms_feasibility_study_cost_report (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_feasibility_study_report_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_organization_id integer,
    fk_eqms_cost_heading_lk_id integer,
    "values" numeric(10,2) 
);

