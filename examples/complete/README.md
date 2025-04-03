<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.117 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_resource_names"></a> [resource\_names](#module\_resource\_names) | terraform.registry.launch.nttdata.com/module_library/resource_name/launch | ~> 2.0 |
| <a name="module_resource_group"></a> [resource\_group](#module\_resource\_group) | terraform.registry.launch.nttdata.com/module_primitive/resource_group/azurerm | ~> 1.0 |
| <a name="module_eventhub_namespace"></a> [eventhub\_namespace](#module\_eventhub\_namespace) | terraform.registry.launch.nttdata.com/module_primitive/eventhub_namespace/azurerm | ~> 1.0.0 |
| <a name="module_eventhub"></a> [eventhub](#module\_eventhub) | terraform.registry.launch.nttdata.com/module_primitive/eventhub/azurerm | ~> 1.0.0 |
| <a name="module_auth_rule"></a> [auth\_rule](#module\_auth\_rule) | ../.. | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_eventhub_name"></a> [eventhub\_name](#input\_eventhub\_name) | The name of the Event Hub instance | `string` | n/a | yes |
| <a name="input_partition_count"></a> [partition\_count](#input\_partition\_count) | The number of partition for the Event Hub. Must be between 1 an 32. | `number` | `2` | no |
| <a name="input_message_retention"></a> [message\_retention](#input\_message\_retention) | Number of days to retain messages. Must be between 1 and 7. | `number` | `1` | no |
| <a name="input_resource_names_map"></a> [resource\_names\_map](#input\_resource\_names\_map) | A map of key to resource\_name that will be used by tf-launch-module\_library-resource\_name to generate resource names | <pre>map(object({<br/>    name       = string<br/>    max_length = optional(number, 60)<br/>  }))</pre> | <pre>{<br/>  "eventhub_namespace": {<br/>    "max_length": 50,<br/>    "name": "eventhub"<br/>  },<br/>  "resource_group": {<br/>    "max_length": 90,<br/>    "name": "rg"<br/>  }<br/>}</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | (Required) The location where the resource will be created. Must not have spaces<br/>    For example, eastus, westus, centralus etc. | `string` | `"eastus2"` | no |
| <a name="input_instance_env"></a> [instance\_env](#input\_instance\_env) | Number that represents the instance of the environment. | `number` | `0` | no |
| <a name="input_logical_product_family"></a> [logical\_product\_family](#input\_logical\_product\_family) | (Required) Name of the product family for which the resource is created.<br/>    Example: org\_name, department\_name. | `string` | `"launch"` | no |
| <a name="input_logical_product_service"></a> [logical\_product\_service](#input\_logical\_product\_service) | (Required) Name of the product service for which the resource is created.<br/>    For example, backend, frontend, middleware etc. | `string` | `"network"` | no |
| <a name="input_class_env"></a> [class\_env](#input\_class\_env) | (Required) Environment where resource is going to be deployed. For example. dev, qa, uat | `string` | `"dev"` | no |
| <a name="input_instance_resource"></a> [instance\_resource](#input\_instance\_resource) | Number that represents the instance of the resource. | `number` | `0` | no |
| <a name="input_sku"></a> [sku](#input\_sku) | The sku for the eventhub namespace. Possible values: Basic, Standard, Premium | `string` | `"Standard"` | no |
| <a name="input_capacity"></a> [capacity](#input\_capacity) | The capacity of the Event Hub Namespace:<br/>  - Basic: 1<br/>  - Standard: Between 1 and 20<br/>  - Premium: Between 1 and 4 | `number` | `1` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_status"></a> [status](#input\_status) | n/a | `string` | `"Active"` | no |
| <a name="input_capture_description"></a> [capture\_description](#input\_capture\_description) | n/a | <pre>object({<br/>    enabled             = bool<br/>    encoding            = string<br/>    interval_in_seconds = number<br/>    size_limit_in_bytes = number<br/>    destination = object({<br/>      name                = string<br/>      blob_container_name = string<br/>      archive_name_format = string<br/>      storage_account_id  = string<br/>    })<br/>  })</pre> | `null` | no |
| <a name="input_auth_rule_name"></a> [auth\_rule\_name](#input\_auth\_rule\_name) | The name of the authorization rule | `string` | n/a | yes |
| <a name="input_listen"></a> [listen](#input\_listen) | Allow the rule to listen to the Event Hub | `bool` | `false` | no |
| <a name="input_send"></a> [send](#input\_send) | Allow the rule to send messages to the Event Hub | `bool` | `false` | no |
| <a name="input_manage"></a> [manage](#input\_manage) | Tags to assign to the authorization rule | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eventhub_name"></a> [eventhub\_name](#output\_eventhub\_name) | The name of the Event Hub instance |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | Resource group name of the managed action group instance |
| <a name="output_eventhub_namespace_name"></a> [eventhub\_namespace\_name](#output\_eventhub\_namespace\_name) | n/a |
| <a name="output_auth_rule_id"></a> [auth\_rule\_id](#output\_auth\_rule\_id) | The ID of the authorization rule |
| <a name="output_auth_rule_name"></a> [auth\_rule\_name](#output\_auth\_rule\_name) | The name of the authorization rule |
| <a name="output_auth_rule_primary_connection_string"></a> [auth\_rule\_primary\_connection\_string](#output\_auth\_rule\_primary\_connection\_string) | The primary connection string of the authorization rule |
| <a name="output_auth_rule_secondary_connection_string"></a> [auth\_rule\_secondary\_connection\_string](#output\_auth\_rule\_secondary\_connection\_string) | The secondary connection string of the authorization rule |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
