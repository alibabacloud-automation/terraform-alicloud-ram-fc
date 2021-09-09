variable "name" {
  default = "terraform-test"
}

resource "alicloud_log_project" "default" {
  name        = var.name
  description = "created by terraform"
  tags        = {
    "test":"test"
  }
}

resource "alicloud_log_store" "default" {
  project               = alicloud_log_project.default.name
  name                  = "log_store"
  shard_count           = 3
  auto_split            = true
  max_split_shard_count = 60
  append_meta           = true
}

module "example" {
  source   = "../"
  name     = var.name
  logstore = alicloud_log_store.default.name
  project  = alicloud_log_project.default.name
}
