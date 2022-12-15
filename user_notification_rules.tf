/* 
  PagerDuty User Notification Rules
  Ref: https://www.terraform.io/docs/providers/pagerduty/r/user_notification_rule.html
*/

/* 
  Single User Example: Support Responder Catelyn Stark
  Various rules depending on incident urgency - high often requires immediate attention.
*/
resource "pagerduty_user_notification_rule" "noah_cooper_phone_high_urgency" {
  user_id                 = pagerduty_user.noah_cooper.id
  start_delay_in_minutes  = 1
  urgency                 = "high"
  contact_method = {
    type = "phone_contact_method"
    id   = pagerduty_user_contact_method.noah_cooper_phone.id
  }
}

resource "pagerduty_user_notification_rule" "noah_cooper_sms_high_urgency" {
  user_id                = pagerduty_user.noah_cooper.id
  start_delay_in_minutes = 1
  urgency                = "high"
  contact_method = {
    type = "sms_contact_method"
    id   = pagerduty_user_contact_method.noah_cooper_sms.id
  }
}

resource "pagerduty_user_notification_rule" "noah_cooper_email_low_urgency" {
  user_id                = pagerduty_user.noah_cooper.id
  start_delay_in_minutes = 5
  urgency                = "low"
  contact_method = {
    type = "email_contact_method"
    id   = pagerduty_user_contact_method.noah_cooper_email.id
  }
}