module "sls" {
  source                      = "terraform-alicloud-modules/sls/alicloud"
  project_name                = var.name
  store_name                  = var.log_store_name
  store_shard_count           = var.store_shard_count
  store_auto_split            = var.store_auto_split
  store_max_split_shard_count = var.store_max_split_shard_count
  store_append_meta           = var.store_append_meta
}

module "example" {
  source                 = "../.."
  name                   = var.name
  document               = var.document
  ram_role_description   = var.ram_role_description
  force                  = var.force
  policy_name            = var.policy_name
  policy_type            = var.policy_type
  fc_service_description = var.fc_service_description
  logstore               = module.sls.this_log_store_name
  project                = module.sls.this_log_project_name
}
