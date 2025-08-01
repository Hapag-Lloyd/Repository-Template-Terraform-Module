config {
  force               = false
  disabled_by_default = false
}

plugin "terraform" {
  enabled = true
  preset  = "all"
}

plugin "aws" {
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
  version = "0.41.0"

  enabled    = true
  deep_check = true
  region     = "eu-central-1"
}
