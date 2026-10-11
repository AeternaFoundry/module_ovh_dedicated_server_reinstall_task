resource "ovh_dedicated_server_reinstall_task" "dedicated_server_reinstall_tasks" {
  for_each = var.dedicated_server_reinstall_tasks

  os                = each.value.os
  service_name      = each.value.service_name
  bootid_on_destroy = each.value.bootid_on_destroy
  properties        = each.value.properties

  dynamic "customizations" {
    for_each = each.value.customizations != null ? [each.value.customizations] : []
    content {
      config_drive_metadata              = customizations.value.config_drive_metadata
      config_drive_user_data             = customizations.value.config_drive_user_data
      efi_bootloader_path                = customizations.value.efi_bootloader_path
      hostname                           = customizations.value.hostname
      http_headers                       = customizations.value.http_headers
      image_check_sum                    = customizations.value.image_check_sum
      image_check_sum_type               = customizations.value.image_check_sum_type
      image_type                         = customizations.value.image_type
      image_url                          = customizations.value.image_url
      language                           = customizations.value.language
      post_installation_script           = customizations.value.post_installation_script
      post_installation_script_extension = customizations.value.post_installation_script_extension
      ssh_key                            = customizations.value.ssh_key
    }
  }

  dynamic "storage" {
    for_each = each.value.storage != null ? each.value.storage : []
    content {
      disk_group_id = storage.value.disk_group_id
      dynamic "hardware_raid" {
        for_each = storage.value.hardware_raid != null ? storage.value.hardware_raid : []
        content {
          arrays     = hardware_raid.value.arrays
          disks      = hardware_raid.value.disks
          raid_level = hardware_raid.value.raid_level
          spares     = hardware_raid.value.spares
        }
      }
      dynamic "partitioning" {
        for_each = storage.value.partitioning != null ? storage.value.partitioning : []
        content {
          disks = partitioning.value.disks
          dynamic "layout" {
            for_each = partitioning.value.layout != null ? partitioning.value.layout : []
            content {
              dynamic "extras" {
                for_each = layout.value.extras != null ? layout.value.extras : []
                content {
                  dynamic "lv" {
                    for_each = extras.value.lv != null ? extras.value.lv : []
                    content {
                      name = lv.value.name
                    }
                  }
                  dynamic "zp" {
                    for_each = extras.value.zp != null ? extras.value.zp : []
                    content {
                      name = zp.value.name
                    }
                  }
                }
              }
              file_system = layout.value.file_system
              mount_point = layout.value.mount_point
              raid_level  = layout.value.raid_level
              size        = layout.value.size
            }
          }
          scheme_name = partitioning.value.scheme_name
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
    }
  }
}

