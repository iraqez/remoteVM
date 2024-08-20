resource "proxmox_lxc" "vmRemote" {
  target_node  = "proxmox"
  hostname     = "vmRemote"
  ostemplate   = "local:vztmpl/ubuntu-23.10-standard_23.10-1_amd64.tar.zst"
  password     = var.password
  unprivileged = true
  cores        = 2
  memory       = 512
  swap         = 512
  start        = true
  onboot       = true
  vmid         = 100
  ssh_public_keys = <<EOT
    ${var.ssh_public_keys}
  EOT
  
  rootfs {
    storage    = "slow"
    size       = "4G"
  }

  network {
    name       = "eth0"
    bridge     = "vmbr0"
    ip         = "192.168.10.218/24"
    gw         = "192.168.10.1"
  }
}
