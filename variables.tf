# AWS Credential
variable "access_key" {
  description = "AWS Access Key"
  default     = ""
}
variable "secret_key" {
  description = "AWS Secret Key"
  default     = ""
}
variable "key_name" {
  default = "przemek-oregon"
}

variable "aws_cred_name" {
  description = "Volterra AWS Cred name"
  default = "przemek-aws"
}

variable "key_path" {
  default = "/Users/grygiel/Documents/keys/aws/przemek-oregon.pem"
}

variable projectPrefix {
  default = "example"
}

variable namespace {
  default = "ptf-test"
}

# AWS 
variable "aws_region" {
  default = "us-west-2"
}

variable "ssh_key" {
  default = ""  
}

variable "tenant_name" {
  default = ""
}

variable "aws_tgw_site_name" {
  default = ""
}

variable "instance_type_name" {
  default = "PALO_ALTO_FW_AWS_INSTANCE_TYPE_M5_2XLARGE"
}

variable "pan_version" {
  default = "11.0.0"
}

variable "domain_suffix_name" {
  default = "example.com"  
}

variable "pan_ha" {
  default = false
}