data "intersight_organization_organization" "default" {
    name = "default"
}

resource "intersight_ntp_policy" "ntp1" { 
    name = "cg-tf-ntp-test-1"
    enabled = true
    ntp_servers = [
    "10.10.10.10",
    "10.10.10.11"
    ]
    organization {
        moid = data.intersight_organization_organization.default.moid
        # selector = "Name eq 'default'"
    }
    # profiles {
    # moid = intersight_server_profile.server1.moid
    # object_type = "server.Profile" }
}