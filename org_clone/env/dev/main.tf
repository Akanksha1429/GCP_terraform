module "storage" {

  source = "../../modules/storage"

  bucket_name   = "mycompany-dev-storage-001"
  location       = "US"
  storage_class  = "STANDARD"
  force_destroy  = true

  labels = {
    env = "dev"
    app = "terraform"
  }
}