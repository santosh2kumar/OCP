##
##  Top Level Variable Definitions
###
variable "resource_group_id" {
    description = "the resource group to be used"
    default     = "6c44fea2935443d29295a85d66c1cd20"
}

variable "vpc_name" {
    description = "Denotes the name of the VPC to create"
    default     = "tftest-vpc01"
}

###
variable "ssh_key_label" {
    description = "the name of the SSHKEY that will be created "
    default     = "tf-sshkey2"
} 
###
variable "private_ssh_key" {
    description = "the file containing the corresponding private key"
    default     = ""
}
###
variable "private_ssh_string" {
    description = "the private ssh key -- as a string"
    default     = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}
######
variable "public_ssh_string" {
    description = "the public ssk key -- as a string"
    default     = "yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy"
}
#####

variable "subnet_name" {
    description = "Denotes the name of the subnet to create"
    default     = "tfest-subnet"
}
variable "ipv4_cidr_block" {
    description = "Denotes the CIDR block to create for the network subnet"
    default     = "10.240.128.0/24"
}
##
## 
variable "image_id" {
    description = "The OS image ID that will be loaded for all nodes"
    default     = "9a6aed49-d4f7-4464-9056-0e0223d2a2f0"
}
variable "hostname_prefix" {
    description = "A prefix to put in front of the hostname for all nodes"
    default = "tftest"
}
variable "docker_volume_prefix" {
    description = "A prefix to put in front of the docker volume name"
    default = "tftest-dockervol"
}
variable "docker_volume_size" {
    description = "Size in GB for docker volume"
    default = "53"
}

###
variable "master" {
    type = "map"
    default = {
        name        = "master"
        profile_id  = "bp2-2x8"
        fip_name    = "master-fip"
        count       = "3"
    }
}

###
variable "infra" {
    type = "map"
    default = {
        name        = "infra"
        profile_id  = "bp2-2x8"
        fip_name    = "infra-fip"
        count       = "1"
    }
}

###
variable "worker" {
    type = "map"
    default = {
        name        = "worker"
        profile_id  = "bp2-2x8"
        fip_name    = "worker-fip"
        count       = "2"
    }
}

variable "rhel_username" {
    default = "root"
}

variable "domain_name" {
    default = "ibm-openshift.cloud"
}

variable "rhel_subscription_username" { default = "myUserid"}

variable "rhel_subscription_password" {default = "myPasswd"}

variable "subscription_pool_list" {
   type = "list"
   default = ["mySubsriptionPoolID"]
}

variable "ocp_admin_username" {
    default = "admin"
}
variable "ocp_admin_password" {
    default = "test123"
}
