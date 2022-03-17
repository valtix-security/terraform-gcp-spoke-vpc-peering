resource "google_compute_route" "spoke1_route" {
  name         = "${var.prefix}-to-valtix-egress-gw"
  dest_range   = "0.0.0.0/0"
  network      = var.spoke_vpc_id
  next_hop_ilb = var.valtix_egress_gw_endpoint
  priority     = 101
}
