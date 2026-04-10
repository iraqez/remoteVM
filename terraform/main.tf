terraform {
  required_providers {
    proxmox = {
        source = "Telmate/proxmox"
        version = "= 3.0.2-rc07"
    }
  }
}

provider "proxmox" {
    pm_api_url = "https://10.10.10.10:8006/api2/json"
    pm_api_token_id = "iraqez@pam!devops"
    pm_api_token_secret = "234fe3c1-79a4-40fe-ad37-cf2aec5bbf6c"
    pm_tls_insecure = true

}


