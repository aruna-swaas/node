CREATE TABLE dnd.eqms_execution_stage_verification_tools (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_execution_stage_verification_id integer,
    fk_eqms_tools_item_id integer,
    status smallint,
    created_date timestamp(6) without time zone,
    created_by integer,
    modified_date timestamp(6) without time zone,
    modified_by integer 
);

