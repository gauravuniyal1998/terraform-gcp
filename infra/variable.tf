variable "terraform_secret_key" {
    description = "Secret key for Terraform, provided via environment variable or CI/CD"
    type        = string
    sensitive   = true

}

variable "gcp_project_id" {
    description = "The GCP project ID"
    type        = string

}

variable "gcp_region" {
    description = "The GCP region"
    type        = string
    default     = "asia-south2"
}
variable "static_site_index_path" {
    description = "../website/index.html"
    type        = string
    default     = "index.html"
}