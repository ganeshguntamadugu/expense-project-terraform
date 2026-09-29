module "mysql_sg" {
    source = "../../terraform-aws-sg"
    # source = "git::https://github.com/ganeshguntamadugu/terraform-aws-sg.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "mysql"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
    sg_tags = var.mysql_sg_tags 
}

module "backend_sg" {
    source = "../../terraform-aws-sg"
    # source = "git::https://github.com/ganeshguntamadugu/terraform-aws-sg.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "backend"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
    sg_tags = var.backend_sg_tags
}

module "frontend_sg" {
    source = "../../terraform-aws-sg"
    # source = "git::https://github.com/ganeshguntamadugu/terraform-aws-sg.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "frontend"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
    sg_tags = var.frontend_sg_tags
}