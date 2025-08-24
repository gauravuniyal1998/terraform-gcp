#bucket to store website files

resource "google_storage_bucket" "website" {
  name     = var.bucket_name
  location = var.gcp_region

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }

  uniform_bucket_level_access = true
  
}