output "folder_iam_bindings_id" {
  description = "Map of id values across all folder_iam_bindings, keyed the same as var.folder_iam_bindings except keys with no id are omitted"
  value       = { for k, v in google_folder_iam_binding.folder_iam_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "folder_iam_bindings_condition" {
  description = "Map of condition values across all folder_iam_bindings, keyed the same as var.folder_iam_bindings except keys with no condition are omitted"
  value       = { for k, v in google_folder_iam_binding.folder_iam_bindings : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "folder_iam_bindings_etag" {
  description = "Map of etag values across all folder_iam_bindings, keyed the same as var.folder_iam_bindings except keys with no etag are omitted"
  value       = { for k, v in google_folder_iam_binding.folder_iam_bindings : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "folder_iam_bindings_folder" {
  description = "Map of folder values across all folder_iam_bindings, keyed the same as var.folder_iam_bindings except keys with no folder are omitted"
  value       = { for k, v in google_folder_iam_binding.folder_iam_bindings : k => v.folder if v.folder != null && length(v.folder) > 0 }
}
output "folder_iam_bindings_members" {
  description = "Map of members values across all folder_iam_bindings, keyed the same as var.folder_iam_bindings except keys with no members are omitted"
  value       = { for k, v in google_folder_iam_binding.folder_iam_bindings : k => v.members if v.members != null && length(v.members) > 0 }
}
output "folder_iam_bindings_role" {
  description = "Map of role values across all folder_iam_bindings, keyed the same as var.folder_iam_bindings except keys with no role are omitted"
  value       = { for k, v in google_folder_iam_binding.folder_iam_bindings : k => v.role if v.role != null && length(v.role) > 0 }
}

