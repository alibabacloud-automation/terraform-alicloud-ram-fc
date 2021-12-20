##############################################################
#variables for sls
##############################################################
variable "name" {
  description = "The name of the log project. It is the only in one Alicloud account."
  type        = string
  default     = "tf-log-test"
}

variable "log_store_name" {
  description = "The log store, which is unique in the same project."
  type        = string
  default     = "log_store"
}

variable "store_shard_count" {
  description = "The number of shards in this log store."
  type        = number
  default     = 2
}
variable "store_auto_split" {
  description = "Determines whether to automatically split a shard."
  type        = bool
  default     = false
}
variable "store_max_split_shard_count" {
  description = "The maximum number of shards for automatic split, which is in the range of 1 to 64."
  type        = number
  default     = 30
}
variable "store_append_meta" {
  description = " Determines whether to append log meta automatically. The meta includes log receive time and client IP address."
  type        = bool
  default     = true
}

##############################################################
#variables for alicloud_ram_role
##############################################################
variable "document" {
  description = "Authorization strategy of the RAM role."
  type        = string
  default     = <<EOF
  {
      "Statement": [
        {
          "Action": "sts:AssumeRole",
          "Effect": "Allow",
          "Principal": {
            "Service": [
              "fc.aliyuncs.com"
            ]
          }
        }
      ],
      "Version": "1"
  }
  EOF
}
variable "ram_role_description" {
  description = "The specification of module ram role description."
  type        = string
  default     = "ram_role_description"
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
  default     = "AliyunLogFullAccess"
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
  default     = "fc_service_description"
}