variable "project_name" {
    default = "expense"
}

variable "environment" {
    default = "dev"
}


variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "mysql_sg_tags" {
    default = {
        Resource = "Security Group"
        Component = "MySQL"
    }
}

variable "backend_sg_tags" {
    default = {
        Resource = "Security Group"
        Component = "Backend"
    }
}

variable "frontend_sg_tags" {
    default = {
        Resource = "Security Group"
        Component = "Frontend"
    }
}






