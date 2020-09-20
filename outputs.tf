output "public" {
  value = zipmap([for i in var.availability_zones : substr(i, -1, 1)], aws_default_subnet.main)
}
