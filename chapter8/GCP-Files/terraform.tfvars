gcp_location  = "US"
force_destroy = true
storage_class = "STANDARD"
project_id    = "terraform-project-2342"
labels        = { environment = "development", owner = "gcp-terraform" }
routing_mode  = "GLOBAL"
ip_cidr_range = "10.0.0.0/16"
gcp_region    = "us-west1"
zone          = "us-west1-c"
address_type  = "INTERNAL"
address       = "10.0.10.10"
project_name  = "terraform-project"