-- Create schema
CREATE SCHEMA IF NOT EXISTS regulation;

CREATE TABLE regulation.eqms_reg_conformity_declaration (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_id integer,
    fk_eqms_reg_product_classification_id integer,
    manufacture_contact_details character varying,
    manufacture_trade_name character varying,
    product_brand_name character varying,
    product_code character varying,
    product_catalogue_number character varying,
    regulation_conformity smallint,
    conformilty_assessment_route character varying,
    general_applicable_directives character varying,
    notified_body_number character varying,
    applicable_common_specification character varying,
    applied_standards character varying,
    competent_authority character varying,
    authorized_representative character varying,
    place character varying,
    conformity_declaration_date timestamp without time zone,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    notified_body_name character varying 
);

