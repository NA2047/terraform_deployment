resource "google_filestore_instance" "instance" {
  name     = "test-instance"
  location = "us-central1"
  tier     = "STANDARD"

  file_shares {
    capacity_gb = 1024
    name        = "share1"
  }

  networks {
    network = "default"
    modes   = ["MODE_IPV4"]
  }

}

resource "google_compute_disk" "default11" {
  name  = var.disk_name
  type  = "hyperdisk-throughput"
  zone  = "us-central1a"
  provisioned_iops = 49
  size = 5000
   lifecycle {
    prevent_destroy = false
  }
}
