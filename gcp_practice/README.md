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
    3. Can SSH to connect with the VM instance.

### Cloud Storage Services:
   1. GCS : Used when need to store Objects.(Eg: Logs, Backups, Artifacts), Also the cheapest storage.
         Features of GCS : 
            - Durability: Highly durable (99.9999999)
            - Cheaper: Storage classes 
                        - standard : (default)
                        - Nearline : Very less accessed
                        - Coldline : Data accessed once in three months.
                        - Archive : Once in a year
            - Multiregion : Almost 100% durability achieved.
            - Versioning : Different versions of log files can be maintained here.
            - RBAC : Can be mainted on bucket and object level.
   2. Filestore : Used when created NFS. (Eg. PPT shared across teams can be stored in a Filestore).
   3. PubSub : Mostly a messaging service. Used when messages needs to be shared by application with DB or multiple microservices.
   4. DataStore : NoSQL db.
   5. Local SSD : Blob storage that can be attached to an existing VM.