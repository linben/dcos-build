output "public_ip" {
  value = "${aws_instance.build.public_ip}" 
}
