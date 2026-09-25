output "vpc_ids" {
  value = module.vpc.vpc_id
}

output "igww_id" {
  value = module.vpc.igw_id
}

# output "az_checks" {
#   value = module.vpc.az_check 
# }

# output "filtering_vpcc" {
#     value = module.vpc.filtering_vpc_info
# }
