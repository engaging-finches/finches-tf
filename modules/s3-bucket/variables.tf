variable "bucket_name" {
  description = "Name of the s3 bucket. Must be unique."
  type        = string
  default     = "dob-terraform-state-meher"
}

variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "testing"
    Owner       = "Meher"
    Client      = "Internal"
    Project     = "DOB"
    Application = "app_server"
  }
}