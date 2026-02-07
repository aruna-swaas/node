CREATE TABLE organization.eqms_organization_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_organization_id integer,
    eqms_tenant_key integer,
    organization_name character varying(100),
    organization_legal_name character varying(100),
    font_style character varying(100),
    official_address character varying(100),
    establishment_date character varying(100),
    tax_id character varying(100),
    organization_size integer,
    organization_abbreviation character varying(100),
    organization_profile_details character varying(100),
    status smallint,
    record_status smallint DEFAULT '1'::smallint,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

