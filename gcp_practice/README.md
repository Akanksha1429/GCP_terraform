# GOOGLE CLOUD PLATFORM

### IAM : 

  1. Responsible for authentication and authorization.
   - Authentication includes : Groups, users, SA
   - Authorization includes : Roles (Permissions)
  2. The Users are binded to the roles using policy.

### Compute Engines:

   1. CPU, Memory, Storage, GPUs.
   2. Can be created via console and shell command(gcloud compute instances create VM_NAME \
      --zone=ZONE \
      --machine-type=e2-medium \
      --image-family=debian-11 \
      --image-project=debian-cloud). 