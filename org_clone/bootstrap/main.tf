resource "google_storage_bucket" "terraform_state" {

  name          = "mycompany-tf-state-001"   # Must be globally unique
  location      = "US"

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  force_destroy = false
}