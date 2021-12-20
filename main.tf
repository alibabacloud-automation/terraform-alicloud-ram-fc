resource "alicloud_ram_role" "default" {
  name        = var.name
  document    = var.document
  description = var.ram_role_description
  force       = var.force
}

resource "alicloud_ram_role_policy_attachment" "default" {
  role_name   = alicloud_ram_role.default.name
  policy_name = var.policy_name
  policy_type = var.policy_type
}

resource "alicloud_fc_service" "default" {
  name        = var.name
  description = var.fc_service_description
  role        = alicloud_ram_role.default.arn
  depends_on  = [alicloud_ram_role_policy_attachment.default]

  log_config {
    logstore = var.logstore
    project  = var.project
  }
}
