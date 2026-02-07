CREATE TABLE hrcs.eqms_hr_candidate_evalution_skill_set (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_hr_candidate_evalution_id integer,
    fk_eqms_hr_role_definition_skill_level_mapper_id integer,
    fk_eqms_hr_skill_level_lk_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

