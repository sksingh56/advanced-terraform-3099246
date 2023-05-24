# variables

variable "project-id" {
  type = string
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "subnet-cidr" {
  type    = string
  default = "10.127.0.0/20"
}

variable "firewall-ports" {
  type    = list(any)
  default = ["80", "8080", "1000-2000", "22"]
}

variable "target_envioroment" {
  default = "DEV"
}

variable "zone" {
  type    = string
  default = "us-central1-a"
}

variable "subnet-name" {
  type    = string
  default = "subnet1"
}

variable "private_google_access" {
  type    = bool
  default = true
}


variable "environment_machine_type" {
  type = map(string)
  default = {
    "DEV"   = "f1-micro",
    "QA"    = "e2-micro",
    "STAGE" = "e2-micro"
    "PROD"  = "e2-medium"
  }
}

variable "environment_instance_setttings" {
  type = map(object({ machine_type = string, labels = map(string) }))
  default = {
    "DEV" = {
      machine_type = "f1-micro"
      labels = {
        environment = "dev"
      }
    },
    "QA" = {
      machine_type = "e2-micro"
      labels = {
        environment = "dev"
      }
    },
    "STAGE" = {
      machine_type = "e2-micro"
      labels = {
        enviornment = "stage"
      }
    },
    "PROD" = {
      machine_type = "e2-medium"
      labels = {
        environment = "prod"
      }
    }
  }
}

variable "environment_list" {
  type    = list(string)
  default = ["DEV", "QA", "STAGE", "PROD"]
}

variable "environment_map" {
  type = map(string)
  default = {
    "DEV"   = "dev",
    "QA"    = "qa",
    "STAGE" = "stage",
    "PROD"  = "prod"
  }
}

variable "compute-source-tags" {
    type = list
    default = ["web"] 
}
