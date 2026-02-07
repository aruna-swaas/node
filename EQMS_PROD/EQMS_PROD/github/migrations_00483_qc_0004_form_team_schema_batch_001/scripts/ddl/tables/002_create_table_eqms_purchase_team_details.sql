CREATE TABLE qc.eqms_purchase_team_details (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_purchase_team_id integer,
    fk_eqms_hr_skill_master_id integer,
    fk_eqms_organization_employee_id integer,
    responsibility character varying(255),
    responsibility_description character varying,
    fk_eqms_status_lk_id integer,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_part_category_id integer 
);

