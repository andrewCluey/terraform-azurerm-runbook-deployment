variable "location" {
  type        = string
  description = "The Azure region that the new Runbook will be deployed into."
  default     = "uksouth"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group where the Runbook will be created."
}

variable "runbook_name" {
  type        = string
  description = "The name to assign to the new Runbook."
}

variable "automation_account_name" {
  type        = string
  description = "The name of an existing Automation Account where the new Runbook will be created."
}

variable "log_verbose" {
  type        = string
  description = "Shoudl; verbose logs be enabled. Defaults to TRUE."
  default     = true
}

variable "log_progress" {
  type        = string
  description = "Should a record be written to the job history before and after each run. Defaults to TRUE."
  default     = true
}

variable "content" {
  type        = string
  description = "The actual content of the runbook (SCRIPT)."
}


variable "schedule_name" {
  type        = string
  description = "The name of a Runbook Schedule that the new runbook will run to."
}


variable "parameters" {
  type        = any
  description = "A map of input parameters required for the Runbook."
  default     = {}
}
