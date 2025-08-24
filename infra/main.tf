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

# Make the bucket publicly accessible
resource "google_storage_bucket_iam_member" "public_access" {
  bucket = google_storage_bucket.website.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}

#upload index.html to the bucket
resource "google_storage_bucket_object" "static_site_src" {
  name   = "index.html"
  bucket = google_storage_bucket.website.name
  source = var.static_site_index_path
  content_type = "text/html" 
  
}

