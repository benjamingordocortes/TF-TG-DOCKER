terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "image" {
  name         = var.image
  keep_locally = false
}

resource "docker_container" "image" {
  image = docker_image.image.image_id
  name  = var.nimage
  ports {
    internal = 80
    external = var.external
  }
}