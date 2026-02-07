CREATE TABLE dnd.eqms_design_review_attended_members (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_execution_stage_design_review_report_id integer,
    fk_eqms_organization_employee_id integer,
    description character varying(3500),
    fk_eqms_status_lk_id smallint,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

