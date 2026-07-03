output "bucket_name" {
  value = google_storage_bucket.dev_test_bucket.name
}

output "bucket_url" {
  value = google_storage_bucket.dev_test_bucket.url
}