/* 
  PagerDuty Services, Integrations, Dependencies, and Maintenance Windows
  - https://www.terraform.io/docs/providers/pagerduty/r/business_service.html
  - https://www.terraform.io/docs/providers/pagerduty/r/service.html
  - https://www.terraform.io/docs/providers/pagerduty/r/service_dependency.html
  - https://www.terraform.io/docs/providers/pagerduty/r/service_integration.html
  - https://www.terraform.io/docs/providers/pagerduty/r/maintenance_window.html
*/

/* 
  Business Service (e.g. higher-level business application)
*/

resource "pagerduty_business_service" "pdcommerce_core_business" {
  name             = "PD Commerce Core Business"
  description      = "Core Business Services"
  point_of_contact = "it_management"
}
resource "pagerduty_business_service" "pdcommerce_mobile_andapi" {
  name             = "Mobile and API Services"
  description      = "PD Commerce Mobile and API for 3rd Parties"
  point_of_contact = "Operations"
}
resource "pagerduty_business_service" "pdcommerce_customer_success" {
  name             = "Customer Success"
  description      = "CS Operations Team"
  point_of_contact = "Operations"
}



/* 
  Technical Services (e.g. lower-level microservices)
*/

resource "pagerduty_service" "pdcommerce_authentication" {
  name                    = "Authentication Services"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.operations.id
  alert_creation          = "create_alerts_and_incidents"
  incident_urgency_rule {
    type    = "constant"
    urgency = "severity_based"
  }
  alert_grouping_parameters {
    type    = "intelligent"
  }
  }

resource "pagerduty_service" "pdcommerce_cartservices" {
  name                    = "Cart Services"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.operations.id
  alert_creation          = "create_alerts_and_incidents"
  incident_urgency_rule {
    type    = "constant"
    urgency = "severity_based"
  }
}

resource "pagerduty_service" "pdcommerce_suggestions" {
  name                    = "Suggestions Service"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.operations.id
  alert_creation          = "create_alerts_and_incidents"
  incident_urgency_rule {
    type    = "constant"
    urgency = "severity_based"
  }
}

resource "pagerduty_service" "pdcommerce_media" {
  name                    = "Media"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.operations.id
  alert_creation          = "create_alerts_and_incidents"
  incident_urgency_rule {
    type    = "constant"
    urgency = "severity_based"
  }
}
resource "pagerduty_service" "pdcommerce_favourites" {
  name                    = "Favourites"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.operations.id
  alert_creation          = "create_alerts_and_incidents"
  incident_urgency_rule {
    type    = "constant"
    urgency = "severity_based"
  }
}
resource "pagerduty_service" "pdcommerce_frontend" {
  name                    = "Front end Services"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.operations.id
  alert_creation          = "create_alerts_and_incidents"
  incident_urgency_rule {
    type    = "constant"
    urgency = "severity_based"
  }
   alert_grouping_parameters {
    type    = "intelligent"
  }
}
resource "pagerduty_service" "pdcommerce_mobile" {
  name                    = "Mobile API"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.operations.id
  alert_creation          = "create_alerts_and_incidents"
  incident_urgency_rule {
    type    = "constant"
    urgency = "severity_based"
  }
}
resource "pagerduty_service" "pdcommerce_API" {
  name                    = "Core API Services"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.operations.id
  alert_creation          = "create_alerts_and_incidents"
  incident_urgency_rule {
    type    = "constant"
    urgency = "severity_based"
  }
}

resource "pagerduty_service" "pdcommerce_csops" {
  name                    = "CS Operations"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.operations.id
  alert_creation          = "create_alerts_and_incidents"
  incident_urgency_rule {
    type    = "constant"
    urgency = "severity_based"
  }
}
resource "pagerduty_service" "pdcommerce_sentiment" {
  name                    = "Sentiment Analysis and Social Media"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.operations.id
  alert_creation          = "create_alerts_and_incidents"
  incident_urgency_rule {
    type    = "constant"
    urgency = "severity_based"
  }
}
resource "pagerduty_service" "pdcommerce_db" {
  name                    = "Shared DB Services"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.operations.id
  alert_creation          = "create_alerts_and_incidents"
  incident_urgency_rule {
    type    = "constant"
    urgency = "severity_based"
  }
}
resource "pagerduty_service" "pdcommerce_logging" {
  name                    = "Shared Logging Services"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.operations.id
  alert_creation          = "create_alerts_and_incidents"
  incident_urgency_rule {
    type    = "constant"
    urgency = "severity_based"
  }
}
resource "pagerduty_service" "pdcommerce_analytics" {
  name                    = "Shared Analytics"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.operations.id
  alert_creation          = "create_alerts_and_incidents"
  incident_urgency_rule {
    type    = "constant"
    urgency = "severity_based"
  }
}

resource "pagerduty_service" "pdcommerce_flashsales" {
  name                    = "Flash Sales"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.operations.id
  alert_creation          = "create_alerts_and_incidents"
  incident_urgency_rule {
    type    = "constant"
    urgency = "severity_based"
  }
}
resource "pagerduty_service" "pdcommerce_storage" {
  name                    = "Shared Storage Services"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.operations.id
  alert_creation          = "create_alerts_and_incidents"
  incident_urgency_rule {
    type    = "constant"
    urgency = "severity_based"
  }
}

/* 
  Dependencies
*/

resource "pagerduty_service_dependency" "pdcommerce_core_business" {
  dependency {
    dependent_service {
      id    = pagerduty_business_service.pdcommerce_core_business.id
      type  = "business_service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_frontend.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_core_business_2" {
  dependency {
    dependent_service {
      id    = pagerduty_business_service.pdcommerce_core_business.id
      type  = "business_service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_authentication.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_core_business_3" {
  dependency {
    dependent_service {
      id    = pagerduty_business_service.pdcommerce_core_business.id
      type  = "business_service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_cartservices.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_core_business_4" {
  dependency {
    dependent_service {
      id    = pagerduty_business_service.pdcommerce_core_business.id
      type  = "business_service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_favourites.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_core_business_5" {
  dependency {
    dependent_service {
      id    = pagerduty_business_service.pdcommerce_core_business.id
      type  = "business_service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_media.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_core_business_6" {
  dependency {
    dependent_service {
      id    = pagerduty_business_service.pdcommerce_core_business.id
      type  = "business_service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_suggestions.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_core_business_7" {
  dependency {
    dependent_service {
      id    = pagerduty_business_service.pdcommerce_core_business.id
      type  = "business_service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_API.id
      type  = "service"
    }
  }
}

resource "pagerduty_service_dependency" "pdcommerce_core_business_8" {
  dependency {
    dependent_service {
      id    = pagerduty_business_service.pdcommerce_core_business.id
      type  = "business_service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_mobile.id
      type  = "service"
    }
  }
}


resource "pagerduty_service_dependency" "pdcommerce_mobile_andapi" {
  dependency {
    dependent_service {
      id    = pagerduty_business_service.pdcommerce_mobile_andapi.id
      type  = "business_service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_mobile.id
      type  = "service"
    }
  }
}



resource "pagerduty_service_dependency" "pdcommerce_customer_success" {
  dependency {
    dependent_service {
      id    = pagerduty_business_service.pdcommerce_customer_success.id
      type  = "business_service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_sentiment.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_customer_success_2" {
  dependency {
    dependent_service {
      id    = pagerduty_business_service.pdcommerce_customer_success.id
      type  = "business_service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_csops.id
      type  = "service"
    }
  }
}

resource "pagerduty_service_dependency" "pdcommerce_shared_services_1" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_suggestions.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_db.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_2" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_suggestions.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_logging.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_3" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_suggestions.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_analytics.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_4" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_suggestions.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_storage.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_5" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_cartservices.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_db.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_6" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_cartservices.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_logging.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_7" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_cartservices.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_storage.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_8" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_cartservices.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_analytics.id
      type  = "service"
    }
  }
}



resource "pagerduty_service_dependency" "pdcommerce_shared_services_9" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_authentication.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_db.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_10" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_authentication.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_logging.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_11" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_authentication.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_analytics.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_12" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_authentication.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_storage.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_13" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_favourites.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_db.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_14" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_favourites.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_logging.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_15" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_favourites.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_storage.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_16" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_favourites.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_analytics.id
      type  = "service"
    }
  }
}

resource "pagerduty_service_dependency" "pdcommerce_shared_services_17" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_media.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_db.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_18" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_media.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_logging.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_19" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_media.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_analytics.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_20" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_media.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_storage.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_21" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_frontend.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_db.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_22" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_frontend.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_logging.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_23" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_frontend.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_storage.id
      type  = "service"
    }
  }
}
resource "pagerduty_service_dependency" "pdcommerce_shared_services_24" {
  dependency {
    dependent_service {
      id    = pagerduty_service.pdcommerce_frontend.id
      type  = "service"
    }
    supporting_service {
      id    = pagerduty_service.pdcommerce_analytics.id
      type  = "service"
    }
  }
}

/* 
  Technical Service Integrations (e.g. 3rd-party integration per technical service)
*/
resource "pagerduty_service_integration" "example_application_website_new_relic" {
  name    = "New Relic Integration"
  vendor  = data.pagerduty_vendor.new_relic.id
  service = pagerduty_service.pdcommerce_frontend.id
}

resource "pagerduty_service_integration" "example_application_database_splunk" {
  name    = "Splunk Integration"
  vendor  = data.pagerduty_vendor.splunk.id
  service = pagerduty_service.pdcommerce_authentication.id
}

/* 
  Technical Service Maintenance Window (e.g. disable creation of incidents during Christmas)
*/
resource "pagerduty_maintenance_window" "db_maintenance" {
  start_time  = format("%s-12-24T17:00:00-00:00", formatdate("YYYY", timestamp()))
  end_time    = format("%s-12-26T09:00:00-00:00", formatdate("YYYY", timestamp()))
  services    = [
                pagerduty_service.pdcommerce_authentication.id,
                pagerduty_service.pdcommerce_db.id
              ]
}

