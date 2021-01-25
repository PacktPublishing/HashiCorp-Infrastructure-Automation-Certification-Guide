/******************************************
	Input variables values
 *****************************************/
region                         = "us-east-1"
cidr_block                     = "10.10.0.0/16"
instance_tenancy               = "default"
enable_classiclink             = false
enable_classiclink_dns_support = false
vpc_name                       = "terraform-vpc"
custom_tags                    = { environment = "test", owner = "terraform", costcenter = "tf0568" }
subnet_name                    = "terraform-subnet"
subnet_cidr                    = "10.10.0.0/24"
create_bucket                  = true
bucket_name                    = "tf-s3-bucket"
force_destroy                  = true
acceleration_status            = "Enabled"