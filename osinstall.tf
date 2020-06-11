data "intersight_compute_rack_unit" "server_1" {
    serial = "WZP22440MUW"
}

# data "intersight_softwarerepository_operating_system_file" "software_esxi_65u2" {
#     name = "ESXi_6.5u2"
# }

# # data "intersight_os_configuration_file" "config_file_esxi_65" {
# #     name = "ESXi6.5ConfigFile"
# # }

# data "intersight_firmware_server_configuration_utility_distributable" "scu_611b" {
#     name = "SCU_Cxxx"
# }

# resource "intersight_os_install" "os_install_server_1" {
#     name = "Terraform - install OS"

#     server {
#         moid = data.intersight_compute_rack_unit.server_1.moid
#         object_type = data.intersight_compute_rack_unit.server_1.object_type
#     }

#     image {
#         moid = data.intersight_softwarerepository_operating_system_file.software_esxi_65u2.moid
#     }

#     organization {
#         moid = data.intersight_organization_organization.default.moid
#     }

#     answers {
#         hostname = "tf-esxi-1"
#         ip_config_type = "static"
#         ipv4_config {
#             gateway = "10.67.16.1"
#             ip_address = "10.67.16.37"
#             netmask = "255.255.255.0"
#         }
#         nameserver = "10.67.28.130"
#         root_password = "C1sco123"

#         source = "Template"
#     }

#     configuration_file {
#         # moid = data.intersight_os_configuration_file.config_file_esxi_65.moid
#         moid = "5da92223b96543090cba4ada"
#     }

#     osdu_image {
#         moid = data.intersight_firmware_server_configuration_utility_distributable.scu_611b.moid
#     }
# }