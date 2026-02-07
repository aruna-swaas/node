-- Rollback: Delete seed data from file split_001_LOOKUP.sql
-- Original file: split_001_LOOKUP.sql
-- Seed data file: 001_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID INT := ${ORGID};
    VAR_PORTAL_URL TEXT := '${PORTALURL}';
BEGIN

-- Delete from notification_center.eqms_nc_template_header
DELETE FROM notification_center.eqms_nc_template_header WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_nc_provider_type_master_id = 1 AND fk_eqms_nc_provider_header_id = 1 AND template_name = 'USER_REGISTRATION' AND template_subject = 'User registration' AND template_body = CONCAT ('<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Password Reset</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
      body {
        margin: 0;
        padding: 0;
        background-color: #f1f2f6;
        font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif;
        color: #333;
      }

      .email-wrapper {
        max-width: 600px;
        margin: 40px auto;
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.06);
        overflow: hidden;
      }

      .header {
        background-color: #0e63f4;
        padding: 20px;
        text-align: center;
        color: #ffffff;
      }

      .header h1 {
        margin: 0;
        font-size: 22px;
      }

      .content {
        padding: 30px;
      }

      .content p {
        font-size: 16px;
        line-height: 1.6;
      }

      .pin-box {
        background-color: #f5f8ff;
        border: 1px solid #cdddfd;
        text-align: center;
        margin: 30px 0;
        padding: 20px;
        font-size: 22px;
        font-weight: bold;
        color: #0e63f4;
        letter-spacing: 4px;
        border-radius: 8px;
      }

      .btn {
        display: inline-block;
        background-color: #0e63f4;
        color: #ffffff;
        text-decoration: none;
        padding: 14px 26px;
        font-size: 16px;
        font-weight: 600;
        border-radius: 6px;
        transition: background-color 0.3s ease;
      }

      .btn:hover {
        background-color: #004dcc;
      }

      .footer {
        text-align: center;
        font-size: 12px;
        color: #888;
        padding: 20px;
      }

      @media (max-width: 600px) {
        .content {
          padding: 20px;
        }
        .pin-box {
          font-size: 20px;
        }
        .btn {
          width: 100%;
          text-align: center;
        }
      }
    </style>
  </head>
  <body>
<html lang="en" style="margin: 0; padding: 0;">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome to eQMS</title>
</head>
<body style="margin: 0; padding: 0; font-family: ''Segoe UI'', sans-serif; background-color: #f4f4f7;">
  <table width="100%" cellpadding="0" cellspacing="0" style="padding: 40px 0;">
    <tr>
      <td align="center">
        <!-- Main container -->
        <table width="600" cellpadding="0" cellspacing="0" style="background: #ffffff; border-radius: 12px; overflow: hidden; box-shadow: 0 5px 25px rgba(0,0,0,0.08);">
          <!-- Banner -->
          <tr>
            <td style="background-color: #4a90e2; padding: 30px; text-align: center;">
              <h1 style="color: white; font-size: 28px; margin: 0;">🎉 Welcome to eQMS</h1>
            </td>
          </tr>
          <!-- Body -->
          <tr>
            <td style="padding: 40px 30px 30px; color: #333;">
              <p style="font-size: 18px; margin: 0 0 20px;">Hi <strong>{{userName}}</strong>,</p>
              <p style="font-size: 16px; line-height: 1.6; margin: 0 0 20px;">
                Your registration was successful! We''re excited to have you onboard.
                To complete your setup, please set your password and secure PIN.
              </p>
              <div style="text-align: center; margin: 30px 0;">
                <a href="',VAR_PORTAL_URL,'/user/set-password?token={{verificationToken}}"
                   style="display: inline-block; background-color: #4a90e2; color: white; text-decoration: none; padding: 14px 28px; font-size: 16px; border-radius: 6px;">
                  Complete Setup
                </a>
              </div>
              <p style="font-size: 16px; line-height: 1.6; margin-top: 40px;">
                If you didn''t register, please ignore this email or contact our support.
              </p>
              <p style="font-size: 16px; margin-top: 30px;">Cheers,<br>
                <strong>eQMS Team</strong>
              </p>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</body>
</html>') AND is_template_html = 1 AND status = 1;

-- Delete from notification_center.eqms_nc_template_header
DELETE FROM notification_center.eqms_nc_template_header WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_nc_provider_type_master_id = 1 AND fk_eqms_nc_provider_header_id = 1 AND template_name = 'FORGET_PASSWORD_AND_PIN' AND template_subject = 'Forgot password and pin' AND template_body = CONCAT ('<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Password Reset</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
      body {
        margin: 0;
        padding: 0;
        background-color: #f1f2f6;
        font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif;
        color: #333;
      }

      .email-wrapper {
        max-width: 600px;
        margin: 40px auto;
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.06);
        overflow: hidden;
      }

      .header {
        background-color: #0e63f4;
        padding: 20px;
        text-align: center;
        color: #ffffff;
      }

      .header h1 {
        margin: 0;
        font-size: 22px;
      }

      .content {
        padding: 30px;
      }

      .content p {
        font-size: 16px;
        line-height: 1.6;
      }

      .pin-box {
        background-color: #f5f8ff;
        border: 1px solid #cdddfd;
        text-align: center;
        margin: 30px 0;
        padding: 20px;
        font-size: 22px;
        font-weight: bold;
        color: #0e63f4;
        letter-spacing: 4px;
        border-radius: 8px;
      }

      .btn {
        display: inline-block;
        background-color: #0e63f4;
        color: #ffffff;
        text-decoration: none;
        padding: 14px 26px;
        font-size: 16px;
        font-weight: 600;
        border-radius: 6px;
        transition: background-color 0.3s ease;
      }

      .btn:hover {
        background-color: #004dcc;
      }

      .footer {
        text-align: center;
        font-size: 12px;
        color: #888;
        padding: 20px;
      }

      @media (max-width: 600px) {
        .content {
          padding: 20px;
        }
        .pin-box {
          font-size: 20px;
        }
        .btn {
          width: 100%;
          text-align: center;
        }
      }
    </style>
  </head>
  <body>
    <div class="email-wrapper">
      <div class="header">
        <h1>Password And PIN Reset Request</h1>
      </div>

      <div class="content">
        <p>Hi {{userName}},</p>

        <p>We received a request to reset the password and pin for your account.</p>

        <p><strong>To continue, click the below button</strong></p>
        <p style="text-align: center; margin-top: 30px;">
          <a href="',VAR_PORTAL_URL,'/user/reset-forgot-password?token={{verificationToken}}" class="btn">Reset</a>
        </p>

        <p>If you didn''t request this, you can safely ignore this email or contact our support team.</p>

        <p>Thanks,<br />The eQMS Team</p>
      </div>

    </div>
  </body>
</html>') AND is_template_html = 1 AND status = 1;

-- Delete from notification_center.eqms_nc_template_header
DELETE FROM notification_center.eqms_nc_template_header WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_nc_provider_type_master_id = 1 AND fk_eqms_nc_provider_header_id = 1 AND template_name = 'TASK_ASSIGNMENT_NOTIFICATION' AND template_subject = 'Task Assignment Notification' AND template_body = '<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Task Assignment Notification</title>
    <style type="text/css">
      a[x-apple-data-detectors] {
        color: inherit !important;
        text-decoration: none !important;
        font-size: inherit !important;
        font-family: inherit !important;
        font-weight: inherit !important;
        line-height: inherit !important;
      }
      @media screen and (max-width: 600px) {
        h1 {
          font-size: 22px !important;
          line-height: 28px !important;
        }
      }
    </style>
  </head>
  <body style="-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;height:100% !important;margin:0 !important;padding:0 !important;width:100% !important;background-color: #f4f4f4; margin: 0 !important; padding: 0 !important;">
    <table border="0" cellpadding="0" cellspacing="0" width="100%" style="-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse !important;">
      <!-- Spacer -->
      <tr>
        <td bgcolor="#f4f4f4" align="center" style="-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;">
          <table width="600" cellpadding="0" cellspacing="0" style="-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse !important;max-width:600px;">
            <tr>
              <td align="center" valign="top" style="-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;padding: 20px 0;"></td>
            </tr>
          </table>
        </td>
      </tr>
      <!-- CONTENT BLOCK -->
      <tr>
        <td align="center" style="-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;padding-top: 20px;">
          <img src="https://media.licdn.com/dms/image/v2/D560BAQFn9AOESxncXQ/company-logo_200_200/company-logo_200_200/0/1699430824025?e=1755734400&v=beta&t=o8CiTmkNHfZRoErFzmMs78aD7IZgzSk1IVFS5tmVmqE" alt="Medstratergist Logo" width="100" height="100" style="-ms-interpolation-mode:bicubic;border:0;height:auto;line-height:100%;outline:none;text-decoration:none;max-width:100%;border-radius: 70%; display: block; margin: 0 auto;">
        </td>
        <!-- HEADER -->
      </tr>
      <tr>
        <td align="center" style="-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;padding: 30px 20px 10px; font-family: Arial, sans-serif;">
          <h1 style="font-size: 24px; font-weight: bold; margin: 0;">🔔 Task Assignment Alert</h1>
        </td>
      </tr>
      <!-- BODY -->
      <tr>
        <td align="left" style="-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;padding: 20px 30px; font-family: Arial, sans-serif; font-size: 16px; line-height: 24px; color: #333333;">
          <p>Hi <strong>{{userName}}</strong>,</p>
          <p>You have been assigned a new task under the project <strong>{{projectName}}</strong>.</p>
                    <p><strong>Task Name:</strong> <a href="{{taskUrl}}">{{taskName}}</a></p>
          <p>Please log in to the portal to review and complete the assigned task as part of the workflow process.</p>
          <p>Thank you,</p>
          <p>eQMS Medstratergist Team</p>
        </td>
      </tr>
      <!-- FOOTER -->
      <tr>
        <td align="center" style="-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;padding: 30px 20px; font-family: Arial, sans-serif; font-size: 12px; color: #777777;">
          <p>This is a system generated email. Please do not reply to this message.</p>
        </td>
      </tr>
    </table>
    <!-- Spacer -->
    <tr>
      <td bgcolor="#f4f4f4" align="center" style="-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;">
        <table width="600" cellpadding="0" cellspacing="0" style="-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse !important;max-width:600px;">
          <tr>
            <td align="center" valign="top" style="-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;padding: 20px 0;"></td>
          </tr>
        </table>
      </td>
    </tr>
  </body>
</html>' AND is_template_html = 1 AND status = 1;

-- Delete from notification_center.eqms_nc_template_header
DELETE FROM notification_center.eqms_nc_template_header WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_nc_provider_type_master_id = 1 AND fk_eqms_nc_provider_header_id = 1 AND template_name = 'FORGET_PASSWORD' AND template_subject = 'Forgot password' AND template_body = '<!DOCTYPE html>
<html lang="en" style="margin: 0; padding: 0;">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Reset Code</title>
    
  </head>
  <body style="margin: 0; padding: 0; font-family: Arial, sans-serif; background-color: #f4f4f7;">
    <table width="100%" cellpadding="0" cellspacing="0" style="padding: 30px 0;">
      <tr>
        <td align="center">
          <!-- Main container -->
          <table width="600" cellpadding="0" cellspacing="0" style="background: #ffffff; border-radius: 8px; overflow: hidden; box-shadow: 0 0 10px rgba(0,0,0,0.05);">
            <!-- Header -->
            <tr style="background-color: #4a90e2; color: white;">
              <td style="padding: 20px 30px; text-align: center;">
                <h2 style="margin: 0;">🔐 Password Reset Request</h2>
              </td>
            </tr>
            <!-- Body -->
            <tr>
              <td style="padding: 30px;">
                <p style="font-size: 16px; color: #333;">
                  We received a request to reset your password. Use the code below to proceed:
                </p>
                <div style="text-align: center; margin: 30px 0;">
                  <span style="display: inline-block; padding: 12px 25px; font-size: 20px; font-weight: bold; color: #4a90e2; border: 2px dashed #4a90e2; border-radius: 5px;">
                    {{code}}
                  </span>
                </div>
                <p style="font-size: 14px; color: #999; text-align: center;">
                  This code is valid for a limited time only.
                </p>
                <p style="font-size: 16px; color: #333;">If you didn''t request a password reset, please ignore this email.</p>
                <p style="font-size: 16px; color: #333;">Thanks,<br/>eQMS Team</p>
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
  </body>
</html>' AND is_template_html = 1 AND status = 1;

-- Delete from notification_center.eqms_nc_template_header
DELETE FROM notification_center.eqms_nc_template_header WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_nc_provider_type_master_id = 1 AND fk_eqms_nc_provider_header_id = 1 AND template_name = 'Send Email Notification' AND template_subject = 'Testing' AND template_body = 'Hi {{username}}' AND is_template_html = 1 AND status = 1;

-- Delete from notification_center.eqms_nc_provider_header
DELETE FROM notification_center.eqms_nc_provider_header WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_nc_provider_type_master_id = 1 AND fk_eqms_nc_provider_channel_master_id = 1 AND provider_name = 'Eqms Email Provider' AND status = 1;

-- Delete from notification_center.eqms_nc_provider_channel_master
DELETE FROM notification_center.eqms_nc_provider_channel_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_nc_provider_type_master_id = 1 AND provider_channel_name = 'MAILGUN' AND is_template_creatable = 0 AND status = 1;

-- Delete from notification_center.eqms_nc_provider_channel_master
DELETE FROM notification_center.eqms_nc_provider_channel_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_nc_provider_type_master_id = 1 AND provider_channel_name = 'SMTP' AND is_template_creatable = 0 AND status = 1;

-- Delete from notification_center.eqms_nc_provider_type_master
DELETE FROM notification_center.eqms_nc_provider_type_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND provider_type_name = 'Whatsapp' AND status = 1;

-- Delete from notification_center.eqms_nc_provider_type_master
DELETE FROM notification_center.eqms_nc_provider_type_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND provider_type_name = 'Sms' AND status = 1;

-- Delete from notification_center.eqms_nc_provider_type_master
DELETE FROM notification_center.eqms_nc_provider_type_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND provider_type_name = 'Email' AND status = 1;

END $$;
