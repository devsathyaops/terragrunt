terraform  {
source = "tfr:///terraform-aws-modules/ec2-instance/aws?version=4.0.0"
}
inputs = {
 ami = "ami-00af37d1144686454"
 key_name = "ubuntu"
 instance_count = 2
 instance_type = "t2.medium"
}
