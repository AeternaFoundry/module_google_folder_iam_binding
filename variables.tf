variable "folder_iam_bindings" {
  description = <<EOT
Map of folder_iam_bindings, attributes below
Required:
    - folder
    - members
    - role
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    folder  = string
    members = set(string)
    role    = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

