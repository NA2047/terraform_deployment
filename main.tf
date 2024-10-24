resource "google_filestore_instance" "instance" {
  name     = var.fs_name
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
