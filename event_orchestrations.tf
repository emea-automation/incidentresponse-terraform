
resource "pagerduty_event_orchestration" "pdcommerce" {
  name = "PD commerce - Event Ingestion"
  description = "Send events to a pair of services"
  team = pagerduty_team.operations.id
}