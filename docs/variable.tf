variable "oauthClientId"{
    type = string
    description = "Genesys Cloud OAuth Client ID"
}

variable "oauthClientSecret"{
    type = string
    description = "Genesys Cloud OAuth Client Secret"
}

variable "awsRegion"{
    type = string 
    description = "AWS Region"
}

variable "divisionId"{
    type = string
    description = "Division id associated with queue"
}

variable "userId"{
    type = string
    description = "user associated with queue"
}

variable "prefix" {
  type        = string
  description = "A name that is to be used as the resource name prefix. Usually it's the project name."
}

variable "environment" {
  type        = string
  description = "Name of the environment, e.g., dev, test, stable, staging, uat, prod etc."
}

variable "genesysCloudScriptUrl"{
    type       = string
    description = "genesys cloud script url"
}

variable "genesysCloudScriptEnv"{
     type       = string
    description = "genesys cloud script environment"
}

variable "business_hours" {
  type        = string
  description = "Business hours in 24-hour format '10:00 - 11:00'"
  
  validation {
    condition     = can(regex("^([01]?[0-9]|2[0-3]):[0-5][0-9] - ([01]?[0-9]|2[0-3]):[0-5][0-9]$", var.business_hours))
    error_message = "Business hours must be in 24-hour format like '10:00 - 11:00'. Hours must be 00-23, minutes must be 00-59"
  }
}