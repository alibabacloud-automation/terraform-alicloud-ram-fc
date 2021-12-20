##############################################################
#variables for alicloud_log_store
##############################################################
store_shard_count           = 3
store_auto_split            = true
store_max_split_shard_count = 60
store_append_meta           = false

##############################################################
#variables for alicloud_ram_role
##############################################################
document             = <<EOF
    {
        "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Effect": "Allow",
            "Principal": {
            "Service": [
                "fc.aliyuncs.com",
                "ecs.aliyuncs.com"
            ]
            }
        }
        ],
        "Version": "1"
    }
    EOF
ram_role_description = "update_ram_role_description"
force                = true

##############################################################
#variables for alicloud_ram_role_policy_attachment
##############################################################
fc_service_description = "update_fc_service_description"