local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('foundation-internal.eclipseide', 'eclipse-ide') {
  settings+: {
    billing_email: "thomas.froment@eclipse-foundation.org",
    default_repository_permission: "write",
    description: "This is both the official community entry point and the starting place for new contributors to the Eclipse IDE and platform-related projects.",
    blog: "https://eclipseide.org/",
    twitter_username: "EclipseJavaIDE",
    members_can_create_teams: true,
    name: "Eclipse IDE",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('.github') {
      has_issues : true,
      has_discussions : true,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('contributing') {
      has_issues : true,
      has_discussions : true,
    },
  ],
}
