provider "aws" {
  region = "eu-west-1"
}

module "firstname_lastname" {
  source = "../../../iam/user"

  username = "firstname.lastname"
  keybase  = "itsdalmo"
}

output "firstname_lastname" {
  value = "${module.firstname_lastname.instructions}"
}
