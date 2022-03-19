resource "google_compute_route" "spoke_route" {
  name         = "${local.spoke_vpc_name}-to-valtix"
  dest_range   = "0.0.0.0/0"
  network      = var.spoke_vpc_id
  next_hop_ilb = var.valtix_egress_gw_endpoint
  priority     = 101
}
