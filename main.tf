data "intersight_organization_organization" "default" {
    name = "default"
}

resource "intersight_ntp_policy" "ntp1" { 
    name = "cg-tf-ntp-test-1"
    enabled = true
    ntp_servers = [
    "10.10.10.10",
    "10.10.10.12"
    ]
    organization {
        moid = data.intersight_organization_organization.default.moid
    }
}