/******************************************
	Subnet Code
 *****************************************/
resource "aws_subnet" "subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block
  tags = merge(
    {
      "Name" = format("%s", var.subnet_name)
    },
    var.custom_tags,
  )
}