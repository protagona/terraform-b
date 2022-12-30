
module "lambda_function_existing_package_local" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "remote-python-a"
  handler       = "entrypoint.lambda_handler"
  runtime       = "python3.9"

  create_package         = false
  local_existing_package = "dist/remote-python-a.zip"
}