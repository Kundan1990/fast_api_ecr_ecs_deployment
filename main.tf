/*module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.project}-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-2b", "us-east-2c"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]

}
 */
 module "ecs-fastapi-ec2-services" {
  // depends_on                = [module.vpc]
   source                  = "./modules/ecs-fastapi-ec2-services"
   vpc_id                  = var.vpc_id
   environment             = var.environment
   project                 = var.project
   region                  = var.region
   app_definitions         = local.app_definitions
   health_check_path       = "/LoginWebApp-1/"
   img                     = var.img
   tag                     = var.tag
   repos                   = var.repos
}
 

 
