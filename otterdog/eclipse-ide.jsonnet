local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-ide') {
  settings+: {
    billing_email: "thomas.froment@eclipse-foundation.org",
    default_repository_permission: "write",
    description: "This is both the official community entry point and the starting place for new contributors to the Eclipse IDE and platform-related projects.",
    members_can_create_teams: true,
    name: "Eclipse IDE",
    plan: "free",
    two_factor_requirement: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('.github') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
  ],
}
