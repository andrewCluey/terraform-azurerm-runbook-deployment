
resource "azurerm_automation_runbook" "runbook" {
    name                    = var.runbook_name #trim(basename(each.value.filename), ".ps1")
    location                = var.location
    resource_group_name     = var.resource_group_name
    automation_account_name = var.automation_account_name
    log_verbose             = var.log_verbose
    log_progress            = var.log_progress
    runbook_type            = "PowerShell"
    content                 = var.content
}


# Create Runbook job / schedule association
resource "azurerm_automation_job_schedule" "job_schedule" {
  resource_group_name     = var.resource_group_name
  automation_account_name = var.automation_account_name
  schedule_name           = var.schedule_name
  runbook_name            = azurerm_automation_runbook.runbook.name
  parameters              = var.parameters
}