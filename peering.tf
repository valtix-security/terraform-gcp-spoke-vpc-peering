resource "google_compute_network_peering" "datapath_to_spoke" {
  name         = "vtx-datapath-to-${var.prefix}"
  network      = var.valtix_service_vpc_id
  peer_network = var.spoke_vpc_id
}

resource "google_compute_network_peering" "spoke_to_datapath" {
  name         = "${var.prefix}-to-vtxdatapath"
  network      = var.spoke_vpc_id
  peer_network = var.valtix_service_vpc_id
}
