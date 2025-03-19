<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.117 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.117.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_eventhub_authorization_rule.auth_rule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub_authorization_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auth_rule_name"></a> [auth\_rule\_name](#input\_auth\_rule\_name) | The name of the authorization rule | `string` | n/a | yes |
| <a name="input_namespace_name"></a> [namespace\_name](#input\_namespace\_name) | The name of the Event Hub Namespace | `string` | n/a | yes |
| <a name="input_eventhub_name"></a> [eventhub\_name](#input\_eventhub\_name) | The name of the Event Hub instance | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_listen"></a> [listen](#input\_listen) | Allow the rule to listen to the Event Hub | `bool` | `false` | no |
| <a name="input_send"></a> [send](#input\_send) | Allow the rule to send messages to the Event Hub | `bool` | `false` | no |
| <a name="input_manage"></a> [manage](#input\_manage) | Tags to assign to the authorization rule | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_auth_rule_id"></a> [auth\_rule\_id](#output\_auth\_rule\_id) | The ID of the authorization rule |
| <a name="output_auth_rule_primary_key"></a> [auth\_rule\_primary\_key](#output\_auth\_rule\_primary\_key) | The primary key of the authorization rule |
| <a name="output_auth_rule_secondary_key"></a> [auth\_rule\_secondary\_key](#output\_auth\_rule\_secondary\_key) | The secondary key of the authorization rule |
| <a name="output_auth_rule_name"></a> [auth\_rule\_name](#output\_auth\_rule\_name) | The name of the authoriation rule |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
