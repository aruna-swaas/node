CREATE TABLE dnd.eqms_design_transfer_applicability (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_user_id integer,
    task_description character varying(100),
    completion_status character varying(50),
    is_applicable smallint,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_product_applicable_clause_id integer 
);

