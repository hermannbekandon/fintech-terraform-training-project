terraform {
    backend "s3" {
        bucket = "s3bucket-terraform-training"
        key    = "vpc/terraform.tfstate"
        region = "us-east-1"    
        encrypt = true
        use_lockfile = true
    }
}