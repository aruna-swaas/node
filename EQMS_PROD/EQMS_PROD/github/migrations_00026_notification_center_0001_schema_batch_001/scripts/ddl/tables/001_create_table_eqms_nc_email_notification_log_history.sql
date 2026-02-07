-- Create schema
CREATE SCHEMA IF NOT EXISTS notification_center;

CREATE TABLE notification_center.eqms_nc_email_notification_log_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_nc_email_notification_log_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_nc_notifications_id integer,
    fk_eqms_nc_template_header_id integer,
    encrypted_recipient_email character varying,
    encrypted_cc_email character varying,
    encrypted_bcc_email character varying,
    sent_at timestamp without time zone,
    delivered_at timestamp without time zone,
    email_status character varying(50),
    email_sent_body text,
    email_message_id character varying(255),
    status smallint,
    record_status smallint DEFAULT '1'::smallint,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

