CREATE TABLE risk_management.eqms_rmp_team_member (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_rmp_team_structure_mapper_id integer,
    fk_eqms_hr_skill_master_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

