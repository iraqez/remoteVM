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
    pm_api_token_id = "root@pam!root"
    pm_api_token_secret = var.pm_api_token_secret
    pm_tls_insecure = true

}


