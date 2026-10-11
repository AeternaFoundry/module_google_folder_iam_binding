resource "google_folder_iam_binding" "folder_iam_bindings" {
  for_each = var.folder_iam_bindings

  folder  = each.value.folder
  members = each.value.members
  role    = each.value.role

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

