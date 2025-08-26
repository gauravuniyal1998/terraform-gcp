#files to be retrieved from the Team Lead
Get terraform.tfvars file from the TL - it would be used for the credentials used to authenticate to the GCP

#initialize the project

$git init //do this in the new folder for your project
$git clone https://github.com/gauravuniyal1998/terraform-gcp.git
$cd terraform-gcp
$cd infra
$terraform init // initialized the new state files for your terraform. 

paste the terraform.tfvars file you got from TL to terraform-gcp/infra/ directory

Collaboration tools like uploading the state file to the cloud for team to be on the same page will be executed later.
