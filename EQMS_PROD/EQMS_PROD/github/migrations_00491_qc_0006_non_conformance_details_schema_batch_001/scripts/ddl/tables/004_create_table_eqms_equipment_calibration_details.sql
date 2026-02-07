CREATE TABLE qc.eqms_equipment_calibration_details (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_equipment_item_id integer,
    fk_eqms_part_lk_id integer,
    calibration_status character varying(100),
    calibration_date timestamp without time zone,
    calibration_due_date timestamp without time zone,
    fk_eqms_file_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

