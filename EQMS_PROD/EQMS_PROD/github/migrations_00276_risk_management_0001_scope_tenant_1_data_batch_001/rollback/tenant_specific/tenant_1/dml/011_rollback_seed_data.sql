-- Rollback: Delete seed data from file F-09 Risk Chart.sql
-- Original file: F-09 Risk Chart.sql
-- Seed data file: 011_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$
DECLARE
    VAR_TENANT_KEY           INT     := ${TENANTKEY};
    VAR_ORG_ID               INT     := ${ORGID};
    VAR_BUCKET_NAME          TEXT    := '${BUCKETNAME}';
    VAR_API_ENDPOINT         TEXT    := '${APIENDPOINT}';
BEGIN

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 677 AND variable_key = 'after_p5s5_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p5s5_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 676 AND variable_key = 'after_p5s4_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p5s4_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 675 AND variable_key = 'after_p5s3_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p5s3_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 674 AND variable_key = 'after_p5s2_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p5s2_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 673 AND variable_key = 'after_p5s1_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p5s1_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 672 AND variable_key = 'after_p4s5_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p4s5_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 671 AND variable_key = 'after_p4s4_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p4s4_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 670 AND variable_key = 'after_p4s3_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p4s3_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 669 AND variable_key = 'after_p4s2_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p4s2_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 668 AND variable_key = 'after_p4s1_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p4s1_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 667 AND variable_key = 'after_p3s5_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p3s5_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 666 AND variable_key = 'after_p3s4_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p3s4_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 665 AND variable_key = 'after_p3s3_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p3s3_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 664 AND variable_key = 'after_p3s2_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p3s2_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 663 AND variable_key = 'after_p3s1_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p3s1_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 662 AND variable_key = 'after_p2s5_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p2s5_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 661 AND variable_key = 'after_p2s4_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p2s4_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 660 AND variable_key = 'after_p2s3_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p2s3_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 659 AND variable_key = 'after_p2s2_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p2s2_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 658 AND variable_key = 'after_p2s1_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p2s1_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 657 AND variable_key = 'after_p1s5_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p1s5_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 656 AND variable_key = 'after_p1s4_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p1s4_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 655 AND variable_key = 'after_p1s3_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p1s3_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 654 AND variable_key = 'after_p1s2_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p1s2_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 653 AND variable_key = 'after_p1s1_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p1s1_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 652 AND variable_key = 'after_s5' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_s5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 651 AND variable_key = 'after_s4' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_s4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 650 AND variable_key = 'after_s3' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_s3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 649 AND variable_key = 'after_s2' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_s2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 648 AND variable_key = 'after_s1' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_s1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 647 AND variable_key = 'after_p5' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 646 AND variable_key = 'after_p4' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 645 AND variable_key = 'after_p3' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 644 AND variable_key = 'after_p2' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 643 AND variable_key = 'after_p1' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 642 AND variable_key = 'after_p5s5' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p5s5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 641 AND variable_key = 'after_p5s4' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p5s4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 640 AND variable_key = 'after_p5s3' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p5s3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 639 AND variable_key = 'after_p5s2' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p5s2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 638 AND variable_key = 'after_p5s1' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p5s1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 637 AND variable_key = 'after_p4s5' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p4s5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 636 AND variable_key = 'after_p4s4' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p4s4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 635 AND variable_key = 'after_p4s3' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p4s3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 634 AND variable_key = 'after_p4s2' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p4s2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 633 AND variable_key = 'after_p4s1' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p4s1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 632 AND variable_key = 'after_p3s5' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p3s5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 631 AND variable_key = 'after_p3s4' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p3s4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 630 AND variable_key = 'after_p3s3' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p3s3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 629 AND variable_key = 'after_p3s2' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p3s2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 628 AND variable_key = 'after_p3s1' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p3s1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 627 AND variable_key = 'after_p2s5' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p2s5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 626 AND variable_key = 'after_p2s4' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p2s4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 625 AND variable_key = 'after_p2s3' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p2s3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 624 AND variable_key = 'after_p2s2' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p2s2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 623 AND variable_key = 'after_p2s1' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p2s1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 622 AND variable_key = 'after_p1s5' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p1s5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 621 AND variable_key = 'after_p1s4' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p1s4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 620 AND variable_key = 'after_p1s3' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p1s3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 619 AND variable_key = 'after_p1s2' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p1s2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 618 AND variable_key = 'after_p1s1' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{after_p1s1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_ids 618-677;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 617 AND variable_key = 'before_p5s5_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p5s5_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 616 AND variable_key = 'before_p5s4_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p5s4_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 615 AND variable_key = 'before_p5s3_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p5s3_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 614 AND variable_key = 'before_p5s2_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p5s2_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 613 AND variable_key = 'before_p5s1_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p5s1_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 612 AND variable_key = 'before_p4s5_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p4s5_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 611 AND variable_key = 'before_p4s4_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p4s4_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 610 AND variable_key = 'before_p4s3_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p4s3_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 609 AND variable_key = 'before_p4s2_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p4s2_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 608 AND variable_key = 'before_p4s1_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p4s1_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 607 AND variable_key = 'before_p3s5_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p3s5_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 606 AND variable_key = 'before_p3s4_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p3s4_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 605 AND variable_key = 'before_p3s3_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p3s3_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 604 AND variable_key = 'before_p3s2_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p3s2_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 603 AND variable_key = 'before_p3s1_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p3s1_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 602 AND variable_key = 'before_p2s5_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p2s5_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 601 AND variable_key = 'before_p2s4_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p2s4_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 600 AND variable_key = 'before_p2s3_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p2s3_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 599 AND variable_key = 'before_p2s2_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p2s2_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 598 AND variable_key = 'before_p2s1_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p2s1_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 597 AND variable_key = 'before_p1s5_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p1s5_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 596 AND variable_key = 'before_p1s4_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p1s4_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 595 AND variable_key = 'before_p1s3_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p1s3_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 594 AND variable_key = 'before_p1s2_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p1s2_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 593 AND variable_key = 'before_p1s1_count' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p1s1_count}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 592 AND variable_key = 'before_s5' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_s5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 591 AND variable_key = 'before_s4' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_s4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 590 AND variable_key = 'before_s3' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_s3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 589 AND variable_key = 'before_s2' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_s2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 588 AND variable_key = 'before_s1' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_s1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 587 AND variable_key = 'before_p5' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 586 AND variable_key = 'before_p4' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 585 AND variable_key = 'before_p3' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 584 AND variable_key = 'before_p2' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 583 AND variable_key = 'before_p1' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 582 AND variable_key = 'before_p5s5' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p5s5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 581 AND variable_key = 'before_p5s4' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p5s4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 580 AND variable_key = 'before_p5s3' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p5s3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 579 AND variable_key = 'before_p5s2' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p5s2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 578 AND variable_key = 'before_p5s1' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p5s1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 577 AND variable_key = 'before_p4s5' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p4s5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 576 AND variable_key = 'before_p4s4' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p4s4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 575 AND variable_key = 'before_p4s3' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p4s3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 574 AND variable_key = 'before_p4s2' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p4s2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 573 AND variable_key = 'before_p4s1' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p4s1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 572 AND variable_key = 'before_p3s5' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p3s5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 571 AND variable_key = 'before_p3s4' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p3s4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 570 AND variable_key = 'before_p3s3' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p3s3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 569 AND variable_key = 'before_p3s2' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p3s2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 568 AND variable_key = 'before_p3s1' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p3s1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 567 AND variable_key = 'before_p2s5' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p2s5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 566 AND variable_key = 'before_p2s4' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p2s4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 565 AND variable_key = 'before_p2s3' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p2s3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 564 AND variable_key = 'before_p2s2' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p2s2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 563 AND variable_key = 'before_p2s1' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p2s1}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 562 AND variable_key = 'before_p1s5' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p1s5}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 561 AND variable_key = 'before_p1s4' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p1s4}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 560 AND variable_key = 'before_p1s3' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p1s3}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 559 AND variable_key = 'before_p1s2' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p1s2}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 558 AND variable_key = 'before_p1s1' AND status = 1 AND fk_eqms_document_template_id = 34 AND variable_identifier = '{before_p1s1}';

-- Delete from dms.eqms_document_template_history
DELETE FROM dms.eqms_document_template_history WHERE eqms_tenant_key = ref_ids 558-617;

-- Delete from dms.eqms_document_template_history
DELETE FROM dms.eqms_document_template_history WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 34 AND fk_eqms_document_template_type_lk_id = 35 AND document_template_name = 'F-09 Risk Chart Before Mitigation' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Risk Management/F-09 Risk Chart.docx') AND template_version = 1.0 AND status = 1;

-- Delete from dms.eqms_document_template_api_details
DELETE FROM dms.eqms_document_template_api_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 34 AND endpoint = CONCAT(VAR_API_ENDPOINT, '/api/v1/risk/record-generation/risk-chart') AND status = 1;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 34 AND fk_eqms_form_id = 91 AND status = 1;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 34 AND fk_eqms_form_id = 155 AND status = 1;

-- Delete from dms.eqms_document_template
DELETE FROM dms.eqms_document_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND fk_eqms_document_template_type_lk_id = 35 AND document_template_name = 'F-09 Risk Chart' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Risk Management/F-09 Risk Chart.docx') AND template_version = 1.0 AND status = 1 AND fk_eqms_record_generation_mode_lk_id = 1;

-- Delete from dms.eqms_document_template_type_lk
DELETE FROM dms.eqms_document_template_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND document_template_type = 'record_generation_risk_chart' AND status = 1;

END $$;
