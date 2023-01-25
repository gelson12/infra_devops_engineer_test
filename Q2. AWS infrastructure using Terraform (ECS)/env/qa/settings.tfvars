env                = "prod"
network_vpc_id     = "vpc-assumed"
private_subnet_ids = ["subnet-pr1v-assumed"]
public_subnet_ids  = ["subnet-publ-assumed"]



deployment_controller_type         = "DEPLOY_THE_CODE"
deployment_maximum_percent         = 200
deployment_minimum_healthy_percent = 100
desired_count                      = 1
  
health_check_grace_period_seconds  = 60
launch_type                        = "FARGATE"
 
network_assign_public_ip          = false
  
platform_version                  = "1.4.0"
 
/* ACTUALLY THIS MAY NOT BE NEED SINCE THERE IS AN ASSUMPTION UPON AN EXITING SUBNETS
subnet_availability_zones_names = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
private_subnet_cidr_blocks      = ["10.20.30.0/24", "10.20.31.0/24"]
public_subnet_cidr_blocks       = ["10.20.32.0/24", "10.20.33.0/24"]*/
