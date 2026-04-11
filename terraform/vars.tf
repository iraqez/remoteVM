variable "password" {
    default = "workfree"
}

variable "ssh_public_keys" {
default = "~/.ssh/id_ed25519.pub"
}

variable "ubuntu2504" {
    default = "iso433:vztmpl/ubuntu-25.04-standard_25.04-1.1_amd64.tar.zst"
}

variable "pm_api_token_secret" {
    default = "d408ecd0-7ecd-4534-a527-ab2fd0bae4bc"
}
 /*   pm_api_token_secret {
      "234fe3c1-79a4-40fe-ad37-cf2aec5bbf6c",
      "d408ecd0-7ecd-4534-a527-ab2fd0bae4bc"
    } */