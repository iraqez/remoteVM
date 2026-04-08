terraform {
  required_providers {
    proxmox = {
        source = "Telmate/proxmox"
        version = "2.9.11"
    }
  }
}

provider "proxmox" {
    pm_api_url = "https://10.10.10.10:8006/api2/json"
    pm_api_token_id = "root@pam!root"
    pm_api_token_secret = "8992a15a-8aa3-4cd7-a22e-a80fd35c49bb"

}


