variable "name" {
  description = "The specification of module name."
  type        = string
  default     = "role_name"
}

variable "ram_role_description" {
  description = "The specification of module ram role description."
  type        = string
  default     = "this is a ram role test"
}

variable "policy_name" {
  description = "The specification of module ram role description."
  type        = string
  default     = "AliyunLogFullAccess"
}

variable "policy_type" {
  description = "The specification of module policy type."
  type        = string
  default     = "System"
}

variable "fc_service_description" {
  description = "The specification of module fc service description."
  type        = string
  default     = "tf unit test"
}

variable "logstore" {
  description = "The specification of logstore."
  type        = string
  default     = ""
}

variable "project" {
  description = "The specification of project."
  type        = string
  default     = ""
}


