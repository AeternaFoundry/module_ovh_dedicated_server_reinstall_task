output "dedicated_server_reinstall_tasks_id" {
  description = "Map of id values across all dedicated_server_reinstall_tasks, keyed the same as var.dedicated_server_reinstall_tasks except keys with no id are omitted"
  value       = { for k, v in ovh_dedicated_server_reinstall_task.dedicated_server_reinstall_tasks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dedicated_server_reinstall_tasks_bootid_on_destroy" {
  description = "Map of bootid_on_destroy values across all dedicated_server_reinstall_tasks, keyed the same as var.dedicated_server_reinstall_tasks except keys with no bootid_on_destroy are omitted"
  value       = { for k, v in ovh_dedicated_server_reinstall_task.dedicated_server_reinstall_tasks : k => v.bootid_on_destroy if v.bootid_on_destroy != null }
}
output "dedicated_server_reinstall_tasks_comment" {
  description = "Map of comment values across all dedicated_server_reinstall_tasks, keyed the same as var.dedicated_server_reinstall_tasks except keys with no comment are omitted"
  value       = { for k, v in ovh_dedicated_server_reinstall_task.dedicated_server_reinstall_tasks : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "dedicated_server_reinstall_tasks_customizations" {
  description = "Map of customizations values across all dedicated_server_reinstall_tasks, keyed the same as var.dedicated_server_reinstall_tasks except keys with no customizations are omitted"
  value       = { for k, v in ovh_dedicated_server_reinstall_task.dedicated_server_reinstall_tasks : k => one(v.customizations) if v.customizations != null && length(v.customizations) > 0 }
}
output "dedicated_server_reinstall_tasks_done_date" {
  description = "Map of done_date values across all dedicated_server_reinstall_tasks, keyed the same as var.dedicated_server_reinstall_tasks except keys with no done_date are omitted"
  value       = { for k, v in ovh_dedicated_server_reinstall_task.dedicated_server_reinstall_tasks : k => v.done_date if v.done_date != null && length(v.done_date) > 0 }
}
output "dedicated_server_reinstall_tasks_function" {
  description = "Map of function values across all dedicated_server_reinstall_tasks, keyed the same as var.dedicated_server_reinstall_tasks except keys with no function are omitted"
  value       = { for k, v in ovh_dedicated_server_reinstall_task.dedicated_server_reinstall_tasks : k => v.function if v.function != null && length(v.function) > 0 }
}
output "dedicated_server_reinstall_tasks_last_update" {
  description = "Map of last_update values across all dedicated_server_reinstall_tasks, keyed the same as var.dedicated_server_reinstall_tasks except keys with no last_update are omitted"
  value       = { for k, v in ovh_dedicated_server_reinstall_task.dedicated_server_reinstall_tasks : k => v.last_update if v.last_update != null && length(v.last_update) > 0 }
}
output "dedicated_server_reinstall_tasks_os" {
  description = "Map of os values across all dedicated_server_reinstall_tasks, keyed the same as var.dedicated_server_reinstall_tasks except keys with no os are omitted"
  value       = { for k, v in ovh_dedicated_server_reinstall_task.dedicated_server_reinstall_tasks : k => v.os if v.os != null && length(v.os) > 0 }
}
output "dedicated_server_reinstall_tasks_properties" {
  description = "Map of properties values across all dedicated_server_reinstall_tasks, keyed the same as var.dedicated_server_reinstall_tasks except keys with no properties are omitted"
  value       = { for k, v in ovh_dedicated_server_reinstall_task.dedicated_server_reinstall_tasks : k => v.properties if v.properties != null && length(v.properties) > 0 }
}
output "dedicated_server_reinstall_tasks_service_name" {
  description = "Map of service_name values across all dedicated_server_reinstall_tasks, keyed the same as var.dedicated_server_reinstall_tasks except keys with no service_name are omitted"
  value       = { for k, v in ovh_dedicated_server_reinstall_task.dedicated_server_reinstall_tasks : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "dedicated_server_reinstall_tasks_start_date" {
  description = "Map of start_date values across all dedicated_server_reinstall_tasks, keyed the same as var.dedicated_server_reinstall_tasks except keys with no start_date are omitted"
  value       = { for k, v in ovh_dedicated_server_reinstall_task.dedicated_server_reinstall_tasks : k => v.start_date if v.start_date != null && length(v.start_date) > 0 }
}
output "dedicated_server_reinstall_tasks_status" {
  description = "Map of status values across all dedicated_server_reinstall_tasks, keyed the same as var.dedicated_server_reinstall_tasks except keys with no status are omitted"
  value       = { for k, v in ovh_dedicated_server_reinstall_task.dedicated_server_reinstall_tasks : k => v.status if v.status != null && length(v.status) > 0 }
}
output "dedicated_server_reinstall_tasks_storage" {
  description = "Map of storage values across all dedicated_server_reinstall_tasks, keyed the same as var.dedicated_server_reinstall_tasks except keys with no storage are omitted"
  value       = { for k, v in ovh_dedicated_server_reinstall_task.dedicated_server_reinstall_tasks : k => v.storage if v.storage != null && length(v.storage) > 0 }
}

