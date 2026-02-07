CREATE TABLE qc.eqms_equipment_calibration_details_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_equipment_calibration_details_id integer NOT NULL,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_equipment_item_id integer,
    fk_eqms_part_lk_id integer,
    calibration_status character varying(100),
    calibration_date timestamp without time zone,
    calibration_due_date timestamp without time zone,
    fk_eqms_file_id integer,
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

