variable "prefix" {
  description = "Prefix to use for all the resources created"
}

variable "project_id" {
  description = "Project Id"
  default     = ""
}

variable "valtix_egress_gw_endpoint" {
  description = "Valtix Egress Gateway Endpoint (IP Address)"
}

variable "valtix_service_vpc_id" {
  description = "Valtix Datapath Service VPC Id (self_link)"
}

variable "spoke_vpc_id" {
  description = "Spoke VPC Id (self_link) that needs to be peered with Valtix Service VPC"
}
