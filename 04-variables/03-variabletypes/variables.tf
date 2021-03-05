variable "application" {
  type        = string
  description = "Application name"
  default = "vmterraformkusu"
}


variable "admin_username" {
  type        = string
  description = "Admin username"
  default = "adminuser"
}




variable "admin_password" {
  type        = string
  description = "Admin username"
  sensitive  = true
  default = "P@$$w0rd1234!"
}



variable "location" {
    type = string
    description = "Location of azure resources"
    default = "westus2"
    
}

variable "vnet_address_space" {
  type        = list(any)
  description = "Address space for Virtual Network"
  default     = ["10.0.0.0/16"]
}

variable "snet_address_space" {
  type        = list(any)
  description = "Address space for Subnet"
  default     = ["10.0.0.0/24"]
}

variable "vm_size" {
    type = string
    description = "VM size"
    default = "Standard_B1s"
}
 
variable "storage_account_type" { 
    type = map
    description = "Disk type Premium in Primary location Standard in DR location"

    default = {
        westus2 = "Standard_LRS"
        eastus = "Premium_LRS"
    }
}

variable "os" {
    description = "OS image to deploy"
    type = object({
        publisher = string
        offer = string
        sku = string
        version = string
  })
} 