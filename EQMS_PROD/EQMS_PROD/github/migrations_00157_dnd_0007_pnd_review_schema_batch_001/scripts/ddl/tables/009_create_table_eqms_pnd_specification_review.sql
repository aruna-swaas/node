CREATE TABLE dnd.eqms_pnd_specification_review (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pnd_review_report_id integer,
    fk_eqms_pnd_specification_id integer,
    rnd_comments character varying(500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    reviewed smallint 
);

