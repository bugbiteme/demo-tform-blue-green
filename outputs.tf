output "lb_dns_name" {
    description = "Public URL of blue/green deployment"
    value = module.base.lb_dns_name
}