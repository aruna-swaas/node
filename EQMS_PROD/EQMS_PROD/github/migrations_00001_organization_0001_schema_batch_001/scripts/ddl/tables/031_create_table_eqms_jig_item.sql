CREATE TABLE organization.eqms_jig_item (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_jig_lk_id integer,
    jig_item character varying(255),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    jig_number character varying(255),
    procedure_of_validation character varying,
    jig_scope character varying 
);

