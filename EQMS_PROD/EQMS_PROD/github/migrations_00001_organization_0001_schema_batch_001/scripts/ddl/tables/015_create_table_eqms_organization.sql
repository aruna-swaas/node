CREATE TABLE organization.eqms_organization (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
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
    version numeric(10,1) DEFAULT 1.0,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

