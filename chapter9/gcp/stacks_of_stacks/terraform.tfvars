/******************************************
	VPC, Subnet and Route Values
 *****************************************/
project_id       = "terraform-project-2342"
labels           = { environment = "development", owner = "gcp-terraform" }
vpc_routing_mode = "GLOBAL"
region           = "us-west2"
zone             = "us-west2-c"
vpc_name         = "terraform-vpc"
project_name     = "terraform-project"
subnets = [
  {
    subnet_name   = "subnet-01"
    subnet_ip     = "10.10.10.0/24"
    subnet_region = "us-west2"
  },
  {
    subnet_name           = "subnet-02"
    subnet_ip             = "10.10.20.0/24"
    subnet_region         = "us-west2"
    subnet_private_access = "true"
    subnet_flow_logs      = "true"
    description           = "This subnet has a description"
  },
  {
    subnet_name               = "subnet-03"
    subnet_ip                 = "10.10.30.0/24"
    subnet_region             = "us-west2"
    subnet_flow_logs          = "true"
    subnet_flow_logs_interval = "INTERVAL_10_MIN"
    subnet_flow_logs_sampling = 0.7
    subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
  }
]
secondary_ranges = {
  subnet-01 = [
    {
      range_name    = "subnet-01-secondary-01"
      ip_cidr_range = "192.168.64.0/24"
    },
  ]

  subnet-02 = []
}
/******************************************
	Routes values
 *****************************************/
routes = [
  {
    name              = "egress-internet"
    description       = "route through IGW to access internet"
    destination_range = "0.0.0.0/0"
    tags              = "egress-inet"
    next_hop_internet = "true"
  }
]
/******************************************
	Storage Bucket values
 *****************************************/
stg_name      = "gcpstg23423"
location      = "US"
force_destroy = true
storage_class = "STANDARD"
