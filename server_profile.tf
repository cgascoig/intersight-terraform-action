

resource "intersight_storage_disk_group_policy" "raid1" {
  name = "tf-disk-group-raid-1"
  organization {
    moid = data.intersight_organization_organization.default.moid
  }

  raid_level = "Raid1"

  span_groups {
    disks {
      slot_number = 1
    }
    disks {
      slot_number = 2
    }
  }

  use_jbods = true
}

resource "intersight_storage_storage_policy" "storage_policy" {
  name = "tf-storage-pol-1"
  organization {
    moid = data.intersight_organization_organization.default.moid
  }

  retain_policy_virtual_drives = true

  virtual_drives {
    object_type         = "storage.VirtualDriveConfig"
    boot_drive          = true
    drive_cache         = "NoChange"
    expand_to_available = true
    io_policy           = "Direct"
    name                = "RAID1"
    access_policy       = "ReadWrite"
    disk_group_policy   = intersight_storage_disk_group_policy.raid1.id
    read_policy         = "NoReadAhead"
    write_policy        = "WriteThrough"
  }

  profiles {
      moid = intersight_server_profile.server_1.moid
      object_type = intersight_server_profile.server_1.object_type
  }
}

resource "intersight_server_profile" "server_1" {
  name = "tf-osinstall-server-1"
  organization {
    moid = data.intersight_organization_organization.default.moid
  }

#   associated_server {
#       moid = data.intersight_compute_rack_unit.server_1.moid
#       object_type = data.intersight_compute_rack_unit.server_1.object_type
#   }
}