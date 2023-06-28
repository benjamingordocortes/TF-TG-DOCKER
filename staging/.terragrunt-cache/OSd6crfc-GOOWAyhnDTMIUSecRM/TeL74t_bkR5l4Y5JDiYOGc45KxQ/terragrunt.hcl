terraform {
  source = "${path_relative_from_include()}/../docker"
}

inputs = {
    image = "httpd"
}