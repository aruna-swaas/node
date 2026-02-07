CREATE TABLE organization.eqms_menu_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    menu_name character varying(100),
    menu_slug character varying(100),
    menu_url character varying(100),
    menu_class_icon character varying(100),
    "order" integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    menu_hierarchy_string text,
    is_context_driven smallint,
    fk_eqms_menu_type_lk_ref_id integer 
);

