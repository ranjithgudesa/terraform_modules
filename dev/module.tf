module "s3" {
    source = "../modules/s3"
    s3_bucket_name = "mydev_terraform_bucket"  
}
module "eventrule" {
    source = "../modules/eventrule"
    rulename = "mydev_terraform_rule"
}
