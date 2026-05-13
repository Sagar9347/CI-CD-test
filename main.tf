module "images" {
  source              = "./modules/images"
  docker-module_image = var.docker-modules-img

}

resource "docker_container" "container" {
  name  = "moduletestcontainer"
  image = module.images.imgname

  ports {
    internal = 80
    external = 8080
  }

}