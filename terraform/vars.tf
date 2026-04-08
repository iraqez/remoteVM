variable "password" {
    default = "workfree"
}

variable "ssh_public_keys" {
default = "~/.ssh/id_ed25519.pub"
}

variable "ubuntu2504" {
    default = "iso433:vztmpl/ubuntu-25.04-standard_25.04-1.1_amd64.tar.zst"
}

variable "ubuntu2310" {
    default = "isos:vztmpl/ubuntu-23.10-standard_23.10-1_amd64.tar.zst"
}