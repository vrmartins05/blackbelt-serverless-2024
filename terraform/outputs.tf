output "name" {
  value       = module.cloudformation-stack.name
  description = "Name of the CloudFormation Stack"
}

output "outputs" {
  value  = module.cloudformation-stack.outputs
  description = "Outputs of the CloudFormation Stack"
}