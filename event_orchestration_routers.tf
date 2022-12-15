resource "pagerduty_event_orchestration_router" "router" {
  event_orchestration = pagerduty_event_orchestration.pdcommerce.id
  set {
    id = "start"
    rule {
      actions {
        route_to = pagerduty_service.pdcommerce_frontend.id
      }
    }
  }
  catch_all {
    actions {
      route_to = "unrouted"
    }
  }
}