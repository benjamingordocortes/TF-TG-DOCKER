terraform {
  source = "${path_relative_from_include()}/../docker"
}

inputs = {
    image = "nginx:1.9.5"
    nimage = "nginx"
    external = 8001
}