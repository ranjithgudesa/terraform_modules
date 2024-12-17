module "s3" {
    source = "../modules/s3"
    s3_bucket_name = "mytest_terraform_bucket"  
}
module "eventrule" {
    source = "../modules/eventrule"
    rulename = "mytest_terraform_rule"
}
