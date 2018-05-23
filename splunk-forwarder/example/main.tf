locals {
  subscriptions = {
    privacyhub-stage-helpdeskservice = "{ $.ThisFlag IS TRUE }"
    privacyhub-stage-consentregistry = "{ $.SomeOtherObject NOT EXISTS }"
  }
}

module "cloudwatch_splunk_lambda_subscription" {
  source = "../../splunk-forwarder"
  log_group_names = "${keys(local.subscriptions)}"
  filter_patterns = "${values(local.subscriptions)}"
}
