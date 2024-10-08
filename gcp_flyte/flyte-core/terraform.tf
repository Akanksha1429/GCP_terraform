terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.41.0"
    }

     kubectl = {
      source  = "alekc/kubectl"
      version = ">= 2.0.2"
    }

    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 4.41.0"
    }
    helm = {
      source = "hashicorp/helm"
      version = ">=2.11.0"
  }

  kubernetes = {
      source = "hashicorp/kubernetes"
      version = ">=2.23.0"
    }

    http = {
      source = "hashicorp/http"
      version = ">=3.4.0"
    }
  }
  required_version = ">= 1.3.0"
  
  backend "gcs" {
    bucket = "test_gcp_tf_state" #Name of the GCS bucket used to store TF state
  }
}
