 resource "aws_launch_template" "sample_template" {
  name = "sample_template"

  block_device_mappings {
    device_name = "/dev/xvda"

    ebs {
      volume_size = 8
    }
  }

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = true

  ebs_optimized = true


  iam_instance_profile {
    name = "mysessionmanagerinstanceprofile"
  }

  image_id = "ami-0b0f4c27376f8aa79"

  instance_initiated_shutdown_behavior = "terminate"

  instance_type = "t2.micro"


  key_name = "hemanth"

  monitoring {
    enabled = true
  }

  network_interfaces {
    associate_public_ip_address = true
  }

  placement {
    availability_zone = "us-east-2b"
  }


  vpc_security_group_ids = ["sg-9719cef6"]

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "terraform template"
    }
  }
}