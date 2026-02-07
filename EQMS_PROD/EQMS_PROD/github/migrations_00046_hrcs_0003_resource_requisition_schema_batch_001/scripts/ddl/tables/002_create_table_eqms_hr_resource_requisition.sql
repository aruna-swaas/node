CREATE TABLE hrcs.eqms_hr_resource_requisition (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_roles_lk_id integer,
    fk_eqms_hr_resource_required_type_lk_id integer,
    fk_eqms_hr_recruitment_type_lk_id integer,
    estimated_cost_to_company integer,
    number_of_openings integer,
    description character varying(500),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_date timestamp without time zone,
    modified_by integer,
    onboard_date timestamp without time zone,
    reason character varying(100) 
);

