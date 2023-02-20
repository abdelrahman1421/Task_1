terraform {
  backend "gcs" {
    bucket = "terraform_tfstate_task"
    prefix = "terraform/state"
  }
}
