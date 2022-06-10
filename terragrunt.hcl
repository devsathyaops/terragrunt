terraform  {
source = "tfr:///terraform-aws-modules/ec2-instance/aws?version=4.0.0"
}
generate "provider" {
path = "provider.tf"
if_exists = "overwrite_terragrunt"
contents = <<EOF
provider "aws"{
  region = "us-west-2"
}
EOF
}
inputs = {
  ami = "ami-00af37d1144686454"
  instance_type = "t2.micro"
  key_name = "ubuntu"
  tags = {
    Name = "TERRAGRUNT"
    Environment = "dev"
}
}

