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

output "auth_rule_id" {
  description = "The ID of the authorization rule"
  value       = azurerm_eventhub_authorization_rule.auth_rule.id
}

output "auth_rule_primary_key" {
  description = "The primary key of the authorization rule"
  value       = azurerm_eventhub_authorization_rule.auth_rule.primary_key
  sensitive   = true
}

output "auth_rule_secondary_key" {
  description = "The secondary key of the authorization rule"
  value       = azurerm_eventhub_authorization_rule.auth_rule.secondary_key
  sensitive   = true
}

output "auth_rule_name" {
  description = "The name of the authoriation rule"
  value       = azurerm_eventhub_authorization_rule.auth_rule.name
}
