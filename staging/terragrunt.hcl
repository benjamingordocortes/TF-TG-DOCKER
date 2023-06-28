terraform {
  source = "${path_relative_from_include()}/../docker"
}

inputs = {
    image = "httpd:2.4.12"
    nimage = "apache"
    external = 8000
}