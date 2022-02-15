module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = bbenscot+aft-demo@amazon.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "bbenscot@amazon.com"
    SSOUserFirstName          = "Brian"
    SSOUserLastName           = "Benscoter"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Brian Benscoter"
    change_reason       = "Demo AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "aft-demo"
}
