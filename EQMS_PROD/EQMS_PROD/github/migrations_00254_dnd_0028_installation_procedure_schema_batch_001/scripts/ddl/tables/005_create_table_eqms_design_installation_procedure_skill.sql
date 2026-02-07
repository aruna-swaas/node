CREATE TABLE dnd.eqms_design_installation_procedure_skill (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_design_installation_procedure_id integer,
    fk_eqms_hr_skill_master_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

