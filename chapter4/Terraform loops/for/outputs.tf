# output of list:
output "cloud_names" {
  value = [for cloud_name in var.cloud : upper(cloud_name)]
}

#output of map:
output "cloud_mapping" {
  value = [for cloud_name, company in var.cloud_map : "${cloud_name} cloud is founded by ${company}"]
}
