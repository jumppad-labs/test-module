variable "name" {
  default = "computer"
}

resource "container" "hello" {
  image {
    name = "alpine:latest"
  }
  
  command = ["echo", "Hello, ${variable.name}!"]
}

output "hello" {
  value = "Hello, ${variable.name}!"
}
