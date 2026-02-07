CREATE TABLE dnd.eqms_dir_declaration (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    is_dir_conflict integer,
    is_dir_conflict_remarks character varying(100),
    is_dir_unambiguous integer,
    is_dir_unambiguous_remarks character varying(100),
    is_dir_verifiable integer,
    is_dir_verifiable_remarks character varying(100),
    is_dir_complete integer,
    is_dir_complete_remarks character varying(100),
    declaration_date_time timestamp without time zone,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    is_dir_retested smallint,
    fk_eqms_dir_adequacy_report_id integer 
);

