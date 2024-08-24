locals {

  #Change this on first use
  application            = "flyte" #Change if needed. By default, this is used to build the FQDN for Flyte. See flyte-host notes
  environment            = "gcp" #Change to match your needs
  project_id             = "pure-beach-428912-m8"
  project_number         = "186944519591"
  dns-domain             = "cluster.local." #Change to yo
  region                 = "us-central1" #Change to your GCP region
  
  #You must replace this email address with your own.
  # Let's Encrypt will use this to contact you about expiring
  # certificates, and issues related to your account.
  email    =             "kumari.akanksha7@gmail.com" 
  
  # Change this only if you need to add more projects in the default installation
  flyte_projects         = ["flytesnacks"]
  flyte_domains          = ["development", "staging", "production"]
}

