variable "atlas_public_key" {
  description = "Public key found in Atlas access page"
  type        = string
}

variable "atlas_private_key" {
  description = "Private key found in Atlas access page"
  type        = string
}

variable "atlas_project_id" {
  default = "67a9eeaba3b34d08edec75bc"
}

variable "atlas_cluster_region" {
  default = "US-EAST-1"
}

variable "atlas_provider_name" {
  default = "AWS"
}

variable "atlas_provider_instance_size" {
  default = "M0"
}

variable "atlas_mongo_db_auto_scaling_enabled" {
  default = false
}

variable "atlas_mongo_db_major_version" {
  default = "5.0"
}

variable "atlas_mongo_db_username" {
  default = "postechuser"
}

variable "atlas_mongo_db_password" {
  description = "MongoDB user password"
  type        = string
}

variable "cidrBlocks" {
  default = "10.0.0.0/16"
}

variable "defaultRegion" {
  default = "us-east-1"
}