variable "project_name" {
    default = "expense"
}

variable "environment" {
    default = "dev"
}

variable "sgs" {
    default = {
        mysql = {
            ingress = [
                {
                    description = "Allow port number 3306"
                    port        = 3306
                    protocol    = "tcp"
                    cidr_blocks = ["0.0.0.0/0"]
                }
            ]
        }

        backend = {
            ingress = [
                {
                    description = "Allow port number 8080"
                    port        = 8080
                    protocol    = "tcp"
                    cidr_blocks = ["0.0.0.0/0"]
                }
            ]
        }

        frontend = {
            ingress = [
                {
                    description = "Allow port number 80"
                    port        = 80
                    protocol    = "tcp"
                    cidr_blocks = ["0.0.0.0/0"]
                },
                {
                    description = "Allow port number 443"
                    port        = 443
                    protocol    = "tcp"
                    cidr_blocks = ["0.0.0.0/0"]
                }
            ]
        }
    }
}

variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "sg_tags" {
    default = {
        Resource = "Security Group"
    }
}






