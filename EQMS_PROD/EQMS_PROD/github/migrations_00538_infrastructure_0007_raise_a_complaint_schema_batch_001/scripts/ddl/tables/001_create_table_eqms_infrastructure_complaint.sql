CREATE TABLE infrastructure.eqms_infrastructure_complaint (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_infrastructure_id integer,
    fk_eqms_status_lk_id integer,
    complaint_title character varying(3500),
    complaint_date timestamp without time zone,
    complaint_description character varying(3500),
    root_cause character varying(3500),
    resolution character varying(3500),
    acknowledge_date timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

