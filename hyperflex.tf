variable "hx_cluster_name" {
    type = string
    default = "tf-hx-1"
}

data "intersight_organization_organization" "melb" {
    name = "Melbourne_LAB"
}

resource "intersight_hyperflex_cluster_profile" "hx_cluster" {
    organization {
        moid = data.intersight_organization_organization.melb.moid
        object_type = data.intersight_organization_organization.melb.object_type
    }

    name = "tf-hx-1"
    description = "Terraform managed Hyperflex cluster profile"

    mgmt_platform = "EDGE"
    mgmt_ip_address = "10.67.16.40"

    replication = 2
    data_ip_address = "169.254.1.1"

    storage_data_vlan {
        vlan_id = 1016
    }

    vcenter_config {
        moid = "5ea69cb46973682d3163f342"
    }

    sys_config {
        moid = "5ea69c796973682d3163e8b8"
    }

    local_credential {
        moid = "5ea69c2d6973682d3163da8c"
    }

    cluster_storage {
        moid = "5ea69cbc6973682d3163f482"
    }

    auto_support {
        moid = "5ea69cc76973682d3163f595"
    }

    node_config {
        moid = "5ea69e446973682d316433d9"
    }

    cluster_network {
        moid = "5ea69ebf6973682d316448d3"
    }

    software_version {
        moid = intersight_hyperflex_software_version_policy.hx.moid
        object_type = intersight_hyperflex_software_version_policy.hx.object_type
    }
}

resource "intersight_hyperflex_software_version_policy" "hx" {
    organization {
        moid = data.intersight_organization_organization.melb.moid
        object_type = data.intersight_organization_organization.melb.object_type
    }

    name = "${var.hx_cluster_name}-software-version-policy"

    hxdp_version = "4.0(2b)"

}

