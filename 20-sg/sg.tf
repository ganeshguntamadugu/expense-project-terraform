module "sg" {
    source = "git::https://github.com/ganeshguntamadugu/terraform-aws-sg.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sgs = var.sgs
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    
}