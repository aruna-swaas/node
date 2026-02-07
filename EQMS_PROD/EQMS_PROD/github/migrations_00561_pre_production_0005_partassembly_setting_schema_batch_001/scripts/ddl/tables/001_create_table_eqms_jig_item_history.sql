CREATE TABLE organization.eqms_jig_item_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_jig_item_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_jig_lk_id integer,
    jig_item character varying(255),
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    jig_number character varying(255),
    procedure_of_validation character varying,
    jig_scope character varying 
);

