// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

# This module generates the resource-name of resources based on resource_type, naming_prefix, env etc.
module "resource_names" {
  source  = "terraform.registry.launch.nttdata.com/module_library/resource_name/launch"
  version = "~> 2.0"

  for_each = var.resource_names_map

  logical_product_family  = var.logical_product_family
  logical_product_service = var.logical_product_service
  region                  = join("", split("-", var.region))
  class_env               = var.class_env
  cloud_resource_type     = each.value.name
  instance_env            = var.instance_env
  maximum_length          = each.value.max_length
  instance_resource       = var.instance_resource
}

module "resource_group" {
  source  = "terraform.registry.launch.nttdata.com/module_primitive/resource_group/azurerm"
  version = "~> 1.0"

  name     = local.resource_group_name
  location = var.region
  tags     = merge(var.tags, { resource_name = module.resource_names["resource_group"].standard })
}

#this module creates the namespace for eventhub
module "eventhub_namespace" {
  source  = "terraform.registry.launch.nttdata.com/module_primitive/eventhub_namespace/azurerm"
  version = "~> 1.0.0"

  namespace_name                = local.eventhub_namespace_name
  location                      = var.location
  resource_group_name           = module.resource_group.name
  sku                           = var.sku
  capacity                      = var.capacity
  public_network_access_enabled = var.public_network_access_enabled
  tags                          = merge(var.tags, { resource_name = module.resource_names["eventhub_namespace"].standard })

  depends_on = [module.resource_group]
}

module "eventhub" {
  source  = "terraform.registry.launch.nttdata.com/module_primitive/eventhub/azurerm"
  version = "~> 1.0.0"

  eventhub_name       = var.eventhub_name
  namespace_name      = module.eventhub_namespace.namespace_name
  resource_group_name = module.resource_group.name
  partition_count     = var.partition_count
  message_retention   = var.message_retention
  status              = var.status
  capture_description = var.capture_description

  depends_on = [module.eventhub_namespace]

}

module "auth_rule" {
  source              = "../.."
  auth_rule_name      = var.auth_rule_name
  namespace_name      = module.eventhub_namespace.namespace_name
  eventhub_name       = module.eventhub.eventhub_name
  resource_group_name = module.resource_group.name
  listen              = var.listen
  send                = var.send
  manage              = var.manage
}
