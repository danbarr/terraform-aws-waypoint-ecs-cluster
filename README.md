# Terraform module for an ECS cluster provisioned by HCP Waypoint

This module deploys an ECS Fargate cluster in AWS.

Enabled for Terraform Cloud [no-code provisioning](https://developer.hashicorp.com/terraform/cloud-docs/no-code-provisioning/module-design) and designed for use by HCP Waypoint. The HCP Waypoint project name will be used to build the cluster name.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.2 |

## Resources

| Name | Type |
|------|------|
| [aws_ecs_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) | resource |
| [aws_ecs_cluster_capacity_providers.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster_capacity_providers) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_region"></a> [region](#input\_region) | The region where the resources are created. | `string` | n/a | yes |
| <a name="input_waypoint_application"></a> [waypoint\_application](#input\_waypoint\_application) | Name of the Waypoint application which will be used to build the cluster name. | `string` | n/a | yes |
| <a name="input_container_insights"></a> [container\_insights](#input\_container\_insights) | Whether to enable CloudWatch Container Insights. | `bool` | `false` | no |
| <a name="input_default_capacity_provider"></a> [default\_capacity\_provider](#input\_default\_capacity\_provider) | Capacity provider to use by default. Valid values are FARGATE and FARGATE\_SPOT. | `string` | `"FARGATE"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_arn"></a> [cluster\_arn](#output\_cluster\_arn) | ARN that identifies the cluster |
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | Name that identifies the cluster |
<!-- END_TF_DOCS -->