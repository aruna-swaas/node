CREATE TABLE workflow.eqms_task_comments (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_tasks_id integer,
    fk_eqms_project_member_roles_id integer,
    comments text,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_user_id integer,
    fk_eqms_role_lk_id integer,
    comments_date date,
    fk_eqms_comment_type_lk_ref_id integer,
    comment_order integer,
    fk_eqms_commenter_type_lk_ref_id integer 
);

