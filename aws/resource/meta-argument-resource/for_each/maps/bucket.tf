resource "aws_s3_bucket" "my-bucket" {

  # meta argument for_each
  # Implement for_each with Maps
  for_each = {
    dev  = "dev-bucket"
    uat  = "uat-bucket"
    prod = "prod-bucket"

  }
  bucket = "${each.key}-${each.value}"

  tags = {
    Enviornment = each.key
    bucketname  = "${each.key}-${each.value}"
    eachvaluve  = each.value
  }
}

 