terraform {

  backend "gcs" {

    bucket = "mycompany-tf-state-001"

    prefix = "dev"
  }
}