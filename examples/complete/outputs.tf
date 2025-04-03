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

output "eventhub_name" {
  description = "The name of the Event Hub instance"
  value       = module.eventhub.eventhub_name
}

output "resource_group_name" {
  description = "Resource group name of the managed action group instance"
  value       = module.resource_group.name
}

output "eventhub_namespace_name" {
  value = module.eventhub_namespace.namespace_name
}

output "auth_rule_id" {
  description = "The ID of the authorization rule"
  value       = module.auth_rule.auth_rule_id
}

output "auth_rule_name" {
  description = "The name of the authorization rule"
  value       = module.auth_rule.auth_rule_name
}

output "auth_rule_primary_connection_string" {
  description = "The primary connection string of the authorization rule"
  value       = module.auth_rule.auth_rule_primary_connection_string
  sensitive   = true
}

output "auth_rule_secondary_connection_string" {
  description = "The secondary connection string of the authorization rule"
  value       = module.auth_rule.auth_rule_secondary_connection_string
  sensitive   = true
}
