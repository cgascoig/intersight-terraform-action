# resource "random_id" "vm_name" {
#   byte_length = 4
#   prefix = "tf-demo-vm-"
#   keepers = {
#     timestamp = timestamp()
#   }
# }
  
resource "intersight_workflow_workflow_info" "start-vm-1" {
  name = "tf-start-vm-1"
  organization {
    moid = data.intersight_organization_organization.default.moid
    object_type = data.intersight_organization_organization.default.object_type
  }

  action = "Start"

  input = {

    Template = "/mel-dc-ng-datacenter/vm/cgascoig/OpenShift/cg-rhel7-template"
    Name = "tf-demo-vm-1"

  }

  workflow_definition {
    moid = "5ecf2ddb696f6e2d3023e84d"
    object_type = "workflow.WorkflowDefinition"
  }

  failed_workflow_cleanup_duration = 2160
  success_workflow_cleanup_duration = 2160


}
