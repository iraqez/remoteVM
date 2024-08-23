resource "proxmox_lxc" "vmRemote" {
  target_node  = "proxmox"
  hostname     = "vmRemote"
  ostemplate   = var.ubuntu2310
  password     = var.password
  unprivileged = true
  cores        = 2
  memory       = 512
  swap         = 512
  start        = true
  onboot       = true
  vmid         = 100
  ssh_public_keys = file(var.ssh_public_keys)
  
  rootfs {
    storage    = "containers"
    size       = "4G"
  }

  network {
    name       = "eth0"
    bridge     = "vmbr0"
    ip         = "192.168.10.218/24"
    gw         = "192.168.10.1"
  }
}
