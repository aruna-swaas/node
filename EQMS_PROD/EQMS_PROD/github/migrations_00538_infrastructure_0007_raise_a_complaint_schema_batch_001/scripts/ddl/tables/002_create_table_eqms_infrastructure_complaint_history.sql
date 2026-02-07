CREATE TABLE infrastructure.eqms_infrastructure_complaint_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_infrastructure_complaint_id integer,
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
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

