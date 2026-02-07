CREATE TABLE hrcs.eqms_hr_resource_requisition_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_hr_resource_requisition_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_roles_lk_id integer,
    fk_eqms_hr_resource_required_type_lk_id integer,
    fk_eqms_hr_recruitment_type_lk_id integer,
    estimated_cost_to_company integer,
    number_of_openings integer,
    description character varying(500),
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    onboard_date timestamp without time zone,
    reason character varying(100) 
);

