variable "prefix" {
  type        = string
  description = "A name that is to be used as the resource name prefix. Usually it's the project name."
}

variable "environment" {
  type        = string
  description = "Name of the environment, e.g., dev, test, stable, staging, uat, prod etc."
}

variable "onHoursQueueName" {
  type = string 
  description= "Name of queue of which bot transfers customer to if customer reach out during on hours"
}

variable "offHoursQueueName" {
  type = string 
  description= "Name of queue of which bot transfers customer to if customer reach out during off hours"
}

variable "scheduleName" {
  type = string 
  description= "Name of schedule to evaluate routing"
}