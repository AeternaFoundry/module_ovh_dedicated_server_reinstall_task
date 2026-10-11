variable "dedicated_server_reinstall_tasks" {
  description = <<EOT
Map of dedicated_server_reinstall_tasks, attributes below
Required:
    - os
    - service_name
Optional:
    - bootid_on_destroy
    - properties
    - customizations (block):
        - config_drive_metadata (optional)
        - config_drive_user_data (optional)
        - efi_bootloader_path (optional)
        - hostname (optional)
        - http_headers (optional)
        - image_check_sum (optional)
        - image_check_sum_type (optional)
        - image_type (optional)
        - image_url (optional)
        - language (optional)
        - post_installation_script (optional)
        - post_installation_script_extension (optional)
        - ssh_key (optional)
    - storage (block):
        - disk_group_id (optional)
        - hardware_raid (optional, block):
            - arrays (optional)
            - disks (optional)
            - raid_level (optional)
            - spares (optional)
        - partitioning (optional, block):
            - disks (optional)
            - layout (optional, block):
                - extras (optional, block):
                    - lv (optional, block):
                        - name (optional)
                    - zp (optional, block):
                        - name (optional)
                - file_system (required)
                - mount_point (required)
                - raid_level (optional)
                - size (optional)
            - scheme_name (optional)
    - timeouts (block):
        - create (optional)
EOT

  type = map(object({
    os                = string
    service_name      = string
    bootid_on_destroy = optional(number)
    properties        = optional(map(string))
    customizations = optional(object({
      config_drive_metadata              = optional(map(string))
      config_drive_user_data             = optional(string)
      efi_bootloader_path                = optional(string)
      hostname                           = optional(string)
      http_headers                       = optional(map(string))
      image_check_sum                    = optional(string)
      image_check_sum_type               = optional(string)
      image_type                         = optional(string)
      image_url                          = optional(string)
      language                           = optional(string)
      post_installation_script           = optional(string)
      post_installation_script_extension = optional(string)
      ssh_key                            = optional(string)
    }))
    storage = optional(list(object({
      disk_group_id = optional(number)
      hardware_raid = optional(list(object({
        arrays     = optional(number)
        disks      = optional(number)
        raid_level = optional(number)
        spares     = optional(number)
      })))
      partitioning = optional(list(object({
        disks = optional(number)
        layout = optional(list(object({
          extras = optional(list(object({
            lv = optional(list(object({
              name = optional(string)
            })))
            zp = optional(list(object({
              name = optional(string)
            })))
          })))
          file_system = string
          mount_point = string
          raid_level  = optional(number)
          size        = optional(number)
        })))
        scheme_name = optional(string)
      })))
    })))
    timeouts = optional(object({
      create = optional(string)
    }))
  }))
}

