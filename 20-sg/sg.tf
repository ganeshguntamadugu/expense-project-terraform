module "sg" {
    source = "../../terraform-aws-sg"
    project_name = var.project_name
    environment = var.environment
    sg_name = var.sg_name
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    
}