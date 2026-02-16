terraform {
    backend "s3" {
        bucket = "myfintech-training-terraform-state"
        key    = "vpc/terraform.tfstate"
        region = "us-east-1"    
        encrypt = true
        dynamodb_table = "myfintech-training-terraform-lock"
    }
}