
DO $$
DECLARE
    VAR_TENANT_KEY   INT     := ${TENANTKEY};
    VAR_ORG_ID       INT     := ${ORGID};

BEGIN
INSERT INTO workflow.eqms_workflow_template (
  eqms_tenant_key, fk_eqms_organization_id, workflow_name, status, created_date, created_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Design and Development', 1, NOW(), 1,1);


INSERT INTO workflow.eqms_project_type (
  eqms_tenant_key, fk_eqms_organization_id, project_type, version, status, created_date, created_by, fk_eqms_workflow_template_id, slug,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'DESIGN', 1, 1, NOW(), 1, 1, 'design', 2);


INSERT INTO workflow.eqms_workflow_task_status (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_template_id, task_status, status, created_date, created_by, status_order,ref_id,slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Yet to start', 1, NOW(), 1, 1, 1,'yet_to_start'),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'In Progress', 1, NOW(), 1, 2, 2,'in_progress'),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'In Review', 1, NOW(), 1, 3, 3, 'in_review'),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Reviewer Approved', 1, NOW(), 1, 4, 4, 'reviewer_approved'),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Reviewer Rejected', 1, NOW(), 1, 5, 5, 'reviewer_rejected'),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Approved', 1, NOW(), 1, 6, 6, 'approved'),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Rejected', 1, NOW(), 1, 7, 7, 'rejected'),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'CEO Approved', 1, NOW(), 1, 8, 8, 'ceo_approved'),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'CEO Rejected', 1, NOW(), 1, 9, 9, 'ceo_rejected'),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Functional Head In Review', 1, NOW(), 1, 3, 17, 'functional_head_in_review'),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Functional Head Approved', 1, NOW(), 1, 6, 18, 'functional_head_approved'),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Functional Head Rejected', 1, NOW(), 1, 7, 19, 'functional_head_rejected');

INSERT INTO workflow.eqms_workflow_status_transition_template (
  eqms_tenant_key, fk_eqms_organization_id, fk_organization_workflow_template_id, fk_eqms_workflow_old_task_status_id, fk_eqms_workflow_new_task_status_id, status, created_date, created_by, fk_eqms_transition_owner_type_lk_id,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 1, 2, 1, NOW(), 1, 1,1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 2, 3, 1, NOW(), 1, 1,2),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 3, 4, 1, NOW(), 1, 2,3),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 3, 5, 1, NOW(), 1, 2,4),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 5, 2, 1, NOW(), 1, 1,5),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 4, 6, 1, NOW(), 1, 3,6),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 4, 7, 1, NOW(), 1, 3,7),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 7, 2, 1, NOW(), 1, 1,8),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 6, 8, 1, NOW(), 1, 3,9),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 6, 9, 1, NOW(), 1, 3,10),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 17, 6, 1, NOW(), 1, 3,16),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 17, 19, 1, NOW(), 1, 3,17),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 19, 17, 1, NOW(), 1, 3,18);


INSERT INTO workflow.eqms_workflow_status_transition_template_role_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_status_transition_template_id, fk_eqms_role_lk_ref_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 6, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 9, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 12, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 15, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 18, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 21, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 24, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 27, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 30, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 33, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 36, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 17, 1, NOW(), 1), -- added for Regulatory Header role
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 6, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 9, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 12, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 15, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 18, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 21, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 24, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 27, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 30, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 33, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 36, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 4, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 7, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 10, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 13, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 16, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 19, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 22, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 25, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 28, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 31, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 34, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 37, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 4, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 7, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 10, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 13, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 16, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 19, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 22, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 25, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 28, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 31, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 34, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 37, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 6, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 9, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 12, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 15, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 18, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 21, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 24, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 27, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 30, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 33, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 36, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 5, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 11, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 14, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 17, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 20, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 23, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 26, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 29, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 32, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 35, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 38, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 5, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 11, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 14, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 17, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 20, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 23, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 26, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 29, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 32, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 35, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 38, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 6, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 9, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 12, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 15, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 18, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 21, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 24, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 27, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 30, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 33, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 36, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 16, 14, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 17, 14, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 18, 14, 1, NOW(), 1);



INSERT INTO workflow.eqms_project_type_tasks (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id, task_name, task_stage_order, task_order, status, created_date, created_by, has_subtask, ref_id, fk_eqms_default_workflow_task_status_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'PROJECT CREATION', 1, 1, 1, NOW(), 1, 0, 1, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'MARKET RESEARCH AND STUDY', 1, 2, 1, NOW(), 1, 0, 2, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'HLD', 1, 3, 1, NOW(), 1, 0, 3, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'FEASIBILITY STUDY', 1, 4, 1, NOW(), 1, 0, 4, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'PRODUCT REALIZATION PLAN', 1, 5, 1, NOW(), 1, 0, 5, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'PND', 1, 6, 1, NOW(), 1, 0, 6, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'PND REVIEW', 1, 7, 1, NOW(), 1, 0, 7, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'PND REVIEW BY FUNCTIONAL HEAD', 1, 8, 1, NOW(), 1, 1, 8, 17),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'DESIGN PROJECT PLAN', 1, 9, 1, NOW(), 1, 0, 9, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'SPECIFICATION APPLICABILITY', 1, 10, 1, NOW(), 1, 0, 10, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'FUNCTIONAL BLOCK', 1, 11, 1, NOW(), 1, 0, 11, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'INTENDED USE', 1, 12, 1, NOW(), 1, 0, 12, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'DIR', 1, 13, 1, NOW(), 1, 1, 13, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'DESIGN INPUT ADEQUACY CHECKLIST', 1, 14, 1, NOW(), 1, 0, 14, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'DESIGN QUALITY PLAN', 1, 15, 1, NOW(), 1, 0, 15, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'PILOT VALIDATION PLAN', 1, 16, 1, NOW(), 1, 0, 16, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'PILOT VALIDATION REPORT', 1, 17, 1, NOW(), 1, 0, 17, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'CLINICAL EVALUATION', 1, 18, 1, NOW(), 1, 0, 18, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'DESIGN OUTPUT DOCUMENT', 1, 19, 1, NOW(), 1, 1, 19, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'QMS CLASS APPLICABILITY', 1, 20, 1, NOW(), 1, 0, 20, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'INPUT OUTPUT TRACEABILITY MATRIX', 1, 21, 1, NOW(), 1, 0, 21, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'ACKNOWLEDGEMENT OF DESIGN TRANSFER', 1, 22, 1, NOW(), 1, 0, 22, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'DIR LIST', 1, 23, 1, NOW(), 1, 0, 23, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'EXECUTION AND VERIFICATION', 1, 24, 1, NOW(), 1, 1, 24, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'PRODUCT LIFE DECLARATION', 1, 25, 1, NOW(), 1, 0, 25, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'INITIATE MANUFACTURING LICENSE', 1, 26, 1, NOW(), 1, 0, 26, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'INSTALLATION PROCEDURE', 1, 27, 1, NOW(), 1, 0, 27, 1);

INSERT INTO workflow.eqms_project_type_task_group (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id, task_group_name, group_execution_rule, group_exit_criteria, status, created_date, created_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'MARKET RESEARCH STUDY', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'HLD', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'FEASIBILITY', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 8, "conditionalWorkflowStatusName": " CEO Approved"}]}}', 1, NOW(), 1, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'PRODUCT REALIZATION PLAN', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 4),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'PND', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 5),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'PND REVIEW', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 6),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'PND REVIEW BY  FUNCTIONAL HEADS', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "PARALLEL"}, {"level": 2, "executionType": "PARALLEL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"taskStatusRules": [{"enabled": true, "priority": 1, "ruleName": "ALL_APPROVE", "resultStatus": "APPROVED", "ruleDescription": "All assignees must approve for task completion", "conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}, {"enabled": true, "priority": 2, "ruleName": "ANY_REJECT", "resultStatus": "REJECTED", "ruleDescription": "Any single rejection blocks the task", "conditionalWorkflowStatusId": 7, "conditionalWorkflowStatusName": "Rejected"}, {"enabled": true, "priority": 1, "ruleName": "ALL_APPROVE", "resultStatus": "APPROVED", "ruleDescription": "All assignees must approve for task completion", "conditionalWorkflowStatusId": 18, "conditionalWorkflowStatusName": "Functional Head Approved"}, {"enabled": true, "priority": 2, "ruleName": "ANY_REJECT", "resultStatus": "REJECTED", "ruleDescription": "Any single rejection blocks the task", "conditionalWorkflowStatusId": 19, "conditionalWorkflowStatusName": "Functional Head Rejected"}], "applicableStatus": [6, 7, 18, 19]}}', 1, NOW(), 1, 7),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'PROJECT PLAN', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 8),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'SPECIFICATION APPLICABILITY', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 9),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'FUNCTIONAL BLOCK', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 10),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'INTENDED USE', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 11),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'DIR', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "PARALLEL"}, {"level": 2, "executionType": "PARALLEL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"taskStatusRules": [{"enabled": true, "priority": 1, "ruleName": "ALL_APPROVE", "resultStatus": "APPROVED", "ruleDescription": "All assignees must approve for task completion", "conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Functional Heads Approved"}], "applicableStatus": [6]}}', 1, NOW(), 1, 12),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'DESIGN INPUT ADEQUACY CHECKLIST', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 13),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'DESIGN QUALITY PLAN', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"taskStatusRules": [{"enabled": true, "priority": 1, "ruleName": "ALL_APPROVE", "resultStatus": "APPROVED", "ruleDescription": "All assignees must approve for task completion", "conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}, {"enabled": true, "priority": 2, "ruleName": "ANY_REJECT", "resultStatus": "REJECTED", "ruleDescription": "Any single rejection blocks the task", "conditionalWorkflowStatusId": 7, "conditionalWorkflowStatusName": "Rejected"}], "applicableStatus": [6, 7]}}', 1, NOW(), 1, 14),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'PILOT VALIDATION PLAN', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 15),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'PILOT VALIDATION REPORT', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 16),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'CLINICAL EVALUATION', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 17),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'DESIGN OUTPUT DOCUMENT', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "PARALLEL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"taskStatusRules": [{"enabled": true, "priority": 1, "ruleName": "ALL_APPROVE", "resultStatus": "APPROVED", "ruleDescription": "All assignees must approve for task completion", "conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}], "applicableStatus": [6]}}', 1, NOW(), 1, 18),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'QMS CLASS APPLICABILITY', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 19),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'INPUT OUTPUT TRACEABILITY MATRIX', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 20),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'ACKNOWLEDGEMENT OF DESIGN TRANSFER', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 21),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'PROJECT CREATION', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 22),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'DIR-LIST', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 23),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'EXECUTION AND VERIFICATION', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}, {"level": 2, "executionType": "SEQUENTIAL"}, {"level": 3, "executionType": "SEQUENTIAL"}, {"level": 4, "executionType": "PARALLEL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"taskStatusRules": [{"enabled": true, "priority": 1, "ruleName": "ALL_APPROVE", "resultStatus": "APPROVED", "ruleDescription": "All assignees must approve for task completion", "conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}, {"enabled": true, "priority": 1, "ruleName": "ALL_APPROVE", "resultStatus": "APPROVED", "ruleDescription": "All assignees must approve for task completion", "conditionalWorkflowStatusId": 18, "conditionalWorkflowStatusName": "Functional Head Approved"}], "applicableStatus": [6, 18]}}', 1, NOW(), 1, 24),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'PRODUCT LIFE DECLARATION', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 25),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'INITIATE MANUFACTURING LICENSE', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 26),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'INSTALLATION PROCEDURE', '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 27);

INSERT INTO workflow.eqms_project_type_task_group_tasks (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_task_group_id, fk_eqms_project_type_tasks_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 22, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 4, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 5, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 6, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 7, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 9, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 10, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 11, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 12, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 13, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 14, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 15, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 16, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 16, 17, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 17, 18, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 18, 19, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 20, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 20, 21, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 21, 22, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 23, 23, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 24, 24, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 25, 25, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 26, 26, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 27, 27, 1, NOW(), 1);



INSERT INTO workflow.eqms_project_type_task_dependencies (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_tasks_id, fk_eqms_trigger_workflow_status_id, fk_eqms_dependent_project_type_tasks_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 4, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 4, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 6, 4, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 8, 5, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 6, 6, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 6, 7, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 6, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 6, 9, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 6, 10, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 6, 11, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 4, 12, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 6, 13, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 6, 23, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 23, 6, 14, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 6, 15, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 6, 24, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 24, 6, 16, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 16, 6, 17, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 17, 6, 25, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 25, 6, 18, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 18, 6, 27, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 27, 6, 19, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 6, 20, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 20, 6, 21, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 21, 6, 22, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 22, 6, 26, 1, NOW(), 1);


INSERT INTO workflow.eqms_project_type_tasks_department_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_department_id, fk_eqms_project_tasks_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 4, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 4, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 5, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 6, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 7, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 9, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 10, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 11, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 11, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 12, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 13, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 14, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 15, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 16, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 17, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 18, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 19, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 20, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 21, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 22, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 23, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 24, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 25, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 26, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 27, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 10, 1, NOW(), 1);


INSERT INTO workflow.eqms_form_type_task_group_mapping (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_project_type_task_group_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 4, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 5, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 6, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 7, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 9, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 10, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 17, 11, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 18, 12, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 13, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 20, 14, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 35, 15, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 16, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 28, 17, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 30, 18, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 31, 19, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 32, 20, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 33, 21, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 22, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 18, 23, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, null, 24, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 49, 25, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 34, 26, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 29, 27, 1, NOW(), 1);

INSERT INTO workflow.eqms_project_type_tasks_url
(eqms_tenant_key, fk_eqms_organization_id,fk_eqms_project_type_tasks_id,template_url,status,created_date, created_by)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, '{domain}/project-details/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, '{domain}/project-details/market-study/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, '{domain}/project-details/hld/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, '{domain}/project-details/feasibility-study/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, '{domain}/project-details/product-realization-plan/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, '{domain}/project-details/pnd/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, '{domain}/project-details/pnd/review/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, '{domain}/dnd/project-plan/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, '{domain}/dnd/dig/specification/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, '{domain}/dnd/functional-block/{context_instance_id}', 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 12, '{domain}/dnd/intended-use/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, '{domain}/dnd/dir/{context_instance_id}', 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 14, '{domain}/dnd/design-input-adequacy-checklist/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, '{domain}/dnd/design-quality-plan/{context_instance_id}', 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 16, '{domain}/project-details/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 17, '{domain}/project-details/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 18, '{domain}/dnd/clinical-evaluation/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, '{domain}/dnd/design-output-document/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 20, '{domain}/dnd/clause-applicability/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 21, '{domain}/dnd/input-output-traceability-matrix/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 22, '{domain}/dnd/acknowledgement-design-transfer/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 23, '{domain}/dnd/dir/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 25, '{domain}/dnd/product-life-declaration/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 26, '{domain}/dnd/initiate-manufacturing-license/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 27, '{domain}/dnd/installation-proceture/{context_instance_id}', 1, NOW(), 1);


INSERT INTO workflow.eqms_project_type_entity_subscription_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_subscription_id, fk_eqms_project_type_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 2, 1, NULL, NULL);

END $$;