variable "sns_topic_policies" {
  description = <<EOT
Map of sns_topic_policies, attributes below
Required:
    - arn
    - policy
Optional:
    - region
EOT

  type = map(object({
    arn    = string
    policy = string
    region = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

