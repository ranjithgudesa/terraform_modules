module "s3" {
    source = "../modules/s3"
    s3_bucket_name = "myprod_terraform_bucket"  
    workspace = terraform.workspace == "default" ? "dev" : terraform.workspace
}
module "eventrule" {
    source = "../modules/eventrule"
    rulename = "myprod_terraform_rule"
    workspace = terraform.workspace == "default" ? "dev" : terraform.workspace
    
}
