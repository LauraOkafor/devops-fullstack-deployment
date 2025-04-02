output "frontend_public_ip" {
  description = "Public IP address of the frontend instance"
  value       = aws_instance.frontend.public_ip
}

output "backend_public_ip" {
  description = "Public IP address of the backend instance"
  value       = aws_instance.backend.public_ip
}

output "database_public_ip" {
  description = "Public IP address of the database instance"
  value       = aws_instance.database.public_ip
}

output "frontend_private_ip" {
  description = "Private IP address of the frontend instance"
  value       = aws_instance.frontend.private_ip
}

output "backend_private_ip" {
  description = "Private IP address of the backend instance"
  value       = aws_instance.backend.private_ip
}

output "database_private_ip" {
  description = "Private IP address of the database instance"
  value       = aws_instance.database.private_ip
}