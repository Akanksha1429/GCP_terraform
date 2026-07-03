resource "google_storage_bucket" "dev_test_bucket" {
    name          = var.bucket_name
    location      = var.location
    storage_class = var.storage_class
    force_destroy = var.force_destroy
    uniform_bucket_level_access = true
    labels        = var.labels
  
}