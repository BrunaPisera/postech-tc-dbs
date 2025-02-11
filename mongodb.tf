resource "mongodbatlas_cluster" "tc_atlas_cluster" {
  project_id                   = var.atlas_project_id
  name                         = "atlas-terraform"
  num_shards                   = 1
  replication_factor           = 3
  auto_scaling_disk_gb_enabled = var.atlas_mongo_db_auto_scaling_enabled
  mongo_db_major_version       = var.atlas_mongo_db_major_version
  provider_name                = "TENANT"
  backing_provider_name        = var.atlas_provider_name
  provider_instance_size_name  = var.atlas_provider_instance_size
  provider_region_name         = var.atlas_cluster_region
}

resource "mongodbatlas_project_ip_access_list" "access_list" {
  project_id = var.atlas_project_id
  cidr_block = "0.0.0.0/0"
}

resource "mongodbatlas_database_user" "user" {
  username           = var.atlas_mongo_db_username
  password           = var.atlas_mongo_db_password
  project_id         = var.atlas_project_id
  auth_database_name = "admin"

  roles {
    role_name     = "readWriteAnyDatabase"
    database_name = "admin"
  }
}

output "connection_strings" {
  value = ["${mongodbatlas_cluster.tc_atlas_cluster.connection_strings}"]
}