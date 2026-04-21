# Private App on Custom VPC + Regional External HTTP(S) Load Balancer + Custom Domain (GoDaddy + Cloud DNS)

---
Reference : https://github.com/iam-veeramalla/gcp-zero-to-hero/tree/main/day-08
 
### Step 1 Create a VPC network : 
- Enable the comput engine API.
- Name of the VPC
- Create custom app-subnet and nat-subnet(name, region)

### Step 2 Create a Cloud NAT gateway : 
- Name of the gateway
- type should be public
- select cloud router of the same region of the vpc.
- create router by just providing a name.
- rest all can be the default selections.

### Step 3 Create Firewall Rule : 
- Create a firewall rule to perform health checks
![health checks](</images/allow_health_checks_8080.png>)
- Create another firewall rule for application traffic.
![application traffic](</images/allow-proxy-only-8080.png>)

### Step 3 Create an instance template: 
- name of the template
- same region (regional)
- Create another firewall rule for application traffic.
![application traffic](</images/allow-proxy-only-8080.png>)