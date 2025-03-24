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

variable "auth_rule_name" {
  description = "The name of the authorization rule"
  type        = string
}

variable "namespace_name" {
  description = "The name of the Event Hub Namespace"
  type        = string
}

variable "eventhub_name" {
  description = "The name of the Event Hub instance"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "listen" {
  description = "Allow the rule to listen to the Event Hub"
  type        = bool
  default     = false
}

variable "send" {
  description = "Allow the rule to send messages to the Event Hub"
  type        = bool
  default     = false
}

variable "manage" {
  description = "Tags to assign to the authorization rule"
  type        = bool
  default     = false
}
