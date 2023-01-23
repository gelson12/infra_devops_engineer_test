
terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
}

module "ecs_service" {
  source = "./modules/ecs/service"

  deployment_controller_type            = "DEPLOY_THE_CODE"
  deployment_maximum_percent            = var.deployment_maximum_percent
  deployment_minimum_healthy_percent    = var.deployment_minimum_healthy_percent
  desired_count                         = var.desired_count
  ecs_cluster_arn                       = var.ecs_cluster_arn
  ecs_cluster_name                      = var.ecs_cluster_name
  iam_policy_statements_task_execution  = var.iam_policy_statements_task_execution
  health_check_grace_period_seconds     = var.health_check_grace_period_seconds
  launch_type                           = var.launch_type
  load_balancer_container_name          = var.load_balancer_container_name
  load_balancer_target_group_arn        = var.load_balancer_target_group_arn
  name                                  = var.name
  network_assign_public_ip              = var.network_assign_public_ip
  network_subnets                       = var.network_subnets
  network_vpc_id                        = var.network_vpc_id
  platform_version                      = var.platform_version
  source_security_group_id              = var.source_security_group_id
  task_definition_container_definitions = var.task_definition_container_definitions
  task_definition_cpu                   = var.task_definition_cpu
  task_definition_memory                = var.task_definition_memory
}
