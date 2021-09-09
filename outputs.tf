output "this_fc_service_name" {
  value = alicloud_fc_service.default.name
}

output "this_fc_service_id" {
  value = alicloud_fc_service.default.id
}

output "this_ram_id" {
  value = alicloud_ram_role.default.id
}

output "this_ram_name" {
  value = alicloud_ram_role.default.name
}
