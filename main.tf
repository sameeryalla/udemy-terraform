provider "aws"{
   region= "us-est-1"
   access_key="AKIAXKYQSQ7TVBWP5J3Y"
   secret_key="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" 
}

#provider "linode" {

#   #token = ""  
   
#}

resource "aws_vpc" "vpc"{
   cidr_block = "10.0.0.0/16"
   tags{
      name="dev-vpc"
   }
}

resource "aws_subnet" "dev-subnet-1"{
   depends_on = [ aws_vpc.vpc ]
   vpc_id = aws_vpc.vpc.id
   cidr_block = "10.0.0.0/16"
   tags{
      name="dev-subnet-1"
   }
}
