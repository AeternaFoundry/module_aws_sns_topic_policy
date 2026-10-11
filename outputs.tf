output "sns_topic_policies_id" {
  description = "Map of id values across all sns_topic_policies, keyed the same as var.sns_topic_policies"
  value       = { for k, v in aws_sns_topic_policy.sns_topic_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sns_topic_policies_arn" {
  description = "Map of arn values across all sns_topic_policies, keyed the same as var.sns_topic_policies"
  value       = { for k, v in aws_sns_topic_policy.sns_topic_policies : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "sns_topic_policies_owner" {
  description = "Map of owner values across all sns_topic_policies, keyed the same as var.sns_topic_policies"
  value       = { for k, v in aws_sns_topic_policy.sns_topic_policies : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "sns_topic_policies_policy" {
  description = "Map of policy values across all sns_topic_policies, keyed the same as var.sns_topic_policies"
  value       = { for k, v in aws_sns_topic_policy.sns_topic_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "sns_topic_policies_region" {
  description = "Map of region values across all sns_topic_policies, keyed the same as var.sns_topic_policies"
  value       = { for k, v in aws_sns_topic_policy.sns_topic_policies : k => v.region if v.region != null && length(v.region) > 0 }
}

