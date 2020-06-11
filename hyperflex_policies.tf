# resource "intersight_hyperflex_local_credential_policy" "hx" {
#     organization {
#         moid = data.intersight_organization_organization.default.moid
#         object_type = data.intersight_organization_organization.default.object_type
#     }

#     name = "${var.hx_cluster_name}-local-credential-policy"
#     description = "Local credential policy for ${var.hx_cluster_name}"

#     factory_hypervisor_password = true
#     hxdp_root_pwd = "C1sco123!!"
#     hypervisor_admin = "root"
#     hypervisor_admin_pwd = "C1sco123!!"
# }

# resource "intersight_hyperflex_sys_config_policy" "hx" {
#     organization {
#         moid = data.intersight_organization_organization.default.moid
#         object_type = data.intersight_organization_organization.default.object_type
#     }

#     name = "${var.hx_cluster_name}-local-sys-config-policy"
#     description = "DNS NTP and Timezone policy for ${var.hx_cluster_name}"

#     dns_domain_name = "lab16demo.cisco.com"
#     dns_servers = ["10.67.16.191"]
#     ntp_servers = ["ntp.esl.cisco.com"]
#     timezone = "Australia/Sydney"
# }

# # resource "intersight_hyperflex_vcenter_config_policy" "hx" {
# #     organization {
# #         moid = data.intersight_organization_organization.default.moid
# #         object_type = data.intersight_organization_organization.default.object_type
# #     }

# #     name = "${var.hx_cluster_name}-vcenter-config-policy"
# #     description = "vCenter policy for ${var.hx_cluster_name}"

# #     data_center = "dc-${var.hx_cluster_name}"
# #     hostname = "10.67.17.125"
# #     password = "C1sco123!!"
# #     username = "administrator@vsphere.local"
# # }

# resource "intersight_hyperflex_cluster_storage_policy" "hx" {
#     organization {
#         moid = data.intersight_organization_organization.default.moid
#         object_type = data.intersight_organization_organization.default.object_type
#     }

#     name = "${var.hx_cluster_name}-cluster-storage-policy"
#     description = "Cluster storage policy for ${var.hx_cluster_name}"

#     disk_partition_cleanup = true
# }

# resource "intersight_hyperflex_auto_support_policy" "hx" {
#     organization {
#         moid = data.intersight_organization_organization.default.moid
#         object_type = data.intersight_organization_organization.default.object_type
#     }

#     name = "${var.hx_cluster_name}-auto-support-policy"
#     description = "Auto support policy for ${var.hx_cluster_name}"

#     admin_state = false
# }

# resource "intersight_hyperflex_node_config_policy" "hx" {
#     organization {
#         moid = data.intersight_organization_organization.default.moid
#         object_type = data.intersight_organization_organization.default.object_type
#     }

#     name = "${var.hx_cluster_name}-node-config-policy"
#     description = "Node config policy for ${var.hx_cluster_name}"

#     node_name_prefix = var.hx_cluster_name

#     hxdp_ip_range {
#         start_addr = "10.67.16.40"
#         end_addr = "10.67.16.41"
#         netmask = "255.255.255.0"
#         gateway = "10.67.16.1"
#     }

#     mgmt_ip_range {
#         start_addr = "10.67.16.37"
#         end_addr = "10.67.16.38"
#         netmask = "255.255.255.0"
#         gateway = "10.67.16.1"
#     }
# }

# resource "intersight_hyperflex_cluster_network_policy" "hx" {
#     organization {
#         moid = data.intersight_organization_organization.default.moid
#         object_type = data.intersight_organization_organization.default.object_type
#     }

#     name = "${var.hx_cluster_name}-cluster-network-policy"
#     description = "Cluster network policy for ${var.hx_cluster_name}"

#     jumbo_frame = false
#     uplink_speed = "1G"

#     mgmt_vlan {
#         vlan_id = 16
#     }
# }