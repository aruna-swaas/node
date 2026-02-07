CREATE TABLE dnd.eqms_pnd_review_report_conclusion (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pnd_review_report_id integer,
    status smallint,
    conclusion character varying(100),
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

