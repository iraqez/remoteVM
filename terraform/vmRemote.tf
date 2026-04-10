resource "proxmox_lxc" "vmRemote" {
  target_node  = "iproxmox"
  hostname     = "vmRemote"
  ostemplate   = var.ubuntu2504
  password     = var.password
  unprivileged = true
  cores        = 2
  memory       = 512
  swap         = 128
  start        = true
  onboot       = true
  vmid         = 100
  ssh_public_keys = file(var.ssh_public_keys)
  
  rootfs {
    storage    = "vmthin433"
    size       = "4G"
  }

  network {
    name       = "eth0"
    bridge     = "vmbr0"
    ip         = "10.10.20.20/24"
    gw         = "10.10.20.254"
    tag        = "20"
  }
}
