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
    description = "Path to the index.html file for the static website"
    default     = "index.html"
}

variable "bucket_name" {
    description = "The name of the GCS bucket to create"
    type        = string
    default     = ""  # Change this to a globally unique name
  
}