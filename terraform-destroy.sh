#!/bin/bash

set -e

echo "=============================="
echo " Starting Terraform Destroy"
echo "=============================="

# Application
echo "Destroying Application..."
cd 40-application
terraform destroy -auto-approve
cd ..

# Bastion
echo "Destroying Bastion..."
cd 30-bastion
terraform destroy -auto-approve
cd ..

# Security Groups
echo "Destroying Security Groups..."
cd 20-sg
terraform destroy -auto-approve
cd ..

# VPC
echo "Destroying VPC..."
cd 10-vpc
terraform destroy -auto-approve
cd ..

echo "=============================="
echo " Terraform Destroy Complete"
echo "=============================="