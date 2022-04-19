locals {
  app_definitions = merge(
    {
      "test-env" = "value",
    })
 
  aws_ecr_url = "${data.aws_caller_identity.current.account_id}.dkr.ecr.${var.region}.amazonaws.com"
}
