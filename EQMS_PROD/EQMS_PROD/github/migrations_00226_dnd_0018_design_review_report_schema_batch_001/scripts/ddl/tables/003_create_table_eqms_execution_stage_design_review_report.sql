CREATE TABLE dnd.eqms_execution_stage_design_review_report (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_execution_stage_id integer,
    topic character varying(100),
    place character varying(100),
    date date,
    minutes_of_meeting character varying(255),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

