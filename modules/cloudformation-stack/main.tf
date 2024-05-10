resource "aws_cloudformation_stack" "stack" {
    
    name = var.stack_name
    capabilities = ["CAPABILITY_NAMED_IAM"]

    #template stack.yaml
    template_body = file("${path.module}/ClickStream-setup.yaml")
}
