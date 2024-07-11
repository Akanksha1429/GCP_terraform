terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 5.0"
    }
  }
   required_version = ">= 1.2.0"
}

provider "google" {
  project = "pure-beach-428912-m8"
  //credentials = "key.json"
}

resource "google_storage_bucket" "terraform_bucket" {
  name = "tf_demo_bucket_ak"
  location = "US"
}

resource "google_compute_instance" "terraform_instance" {
  name = "terraform123testing"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

   // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

 