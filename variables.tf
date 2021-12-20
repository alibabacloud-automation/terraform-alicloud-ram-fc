##############################################################
#variables for alicloud_ram_role
##############################################################
variable "name" {
  description = "The specification of module name."
  type        = string
  default     = ""
}

variable "document" {
  description = "Authorization strategy of the RAM role."
  type        = string
  default     = ""
}

variable "ram_role_description" {
  description = "The specification of module ram role description."
  type        = string
  default     = ""
}

variable "force" {
  description = "This parameter is used for resource destroy"
  type        = bool
  default     = false
}

##############################################################
#variables for alicloud_ram_role_policy_attachment
##############################################################
variable "policy_name" {
  description = "The specification of module ram role description."
  type        = string
  default     = ""
}

variable "policy_type" {
  description = "The specification of module policy type."
  type        = string
  default     = "System"
}

##############################################################
#variables for alicloud_fc_service
##############################################################
variable "fc_service_description" {
  description = "The specification of module fc service description."
  type        = string
  default     = ""
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


