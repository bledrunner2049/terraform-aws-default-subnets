resource "aws_default_subnet" "main" {
  count = length(var.availability_zones)

  availability_zone = element(var.availability_zones, count.index)

  tags = {
    Name              = "${var.vpc.tags.Name}_public_${substr(element(var.availability_zones, count.index), -1, 1)}"
    vpc               = var.vpc.tags.Name
    availability_zone = element(var.availability_zones, count.index)
  }
}
