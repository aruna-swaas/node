CREATE TABLE qc.eqms_incoming_inspection_results (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_incoming_inspection_part_details_id integer,
    inspection_quantity integer,
    remarks character varying(2500),
    fk_eqms_verification_result_lk_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_equipment_item_id integer,
    batch_recieved integer,
    units_per_batch integer,
    units_to_be_tested_per_batch integer,
    fk_eqms_organization_employee_id integer,
    inspected_date timestamp without time zone,
    rejection_per_batch integer,
    rejection_confirmation smallint,
    fk_eqms_part_quantity_type_lk_id integer 
);

