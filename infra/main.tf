#adding the GCP provider
provider "google" {
  credentials = file("../terraform_key.json")
  project     = var.gcp_project_id
  region      = var.gcp_region  
}

#bucket to store website files

resource "google_storage_bucket" "website" {
  name     = var.bucket_name
  location = var.gcp_region

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }

  uniform_bucket_level_access = false
  
}

# Make the bucket publicly accessible
resource "google_storage_object_access_control" "public_rule" {
  bucket = google_storage_bucket.website.name
  object = google_storage_bucket_object.static_site_src.name
  role   = "READER"
  entity = "allUsers"
}

#upload index.html to the bucket
resource "google_storage_bucket_object" "static_site_src" {
  name   = "index.html"
  bucket = google_storage_bucket.website.name
  source = "../website/index.html"
  content_type = "text/html" 
  
}



