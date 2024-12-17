module "s3" {
    source = "../modules/s3"
    s3_bucket_name = "mydev_terraform_bucket"  
    workspace = terraform.workspace == "default" ? "dev" : terraform.workspace
}
module "eventrule" {
    source = "../modules/eventrule"
    rulename = "mydev_terraform_rule"
    workspace = terraform.workspace == "default" ? "dev" : terraform.workspace
    
}
