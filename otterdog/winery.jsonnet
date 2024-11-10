local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('winery') {
  settings+: {
    blog: "https://eclipse.org/winery/",
    description: "Winery is a trademark of the Eclipse Foundation. Additional Winery repositories not (yet) covered by the Eclipse Foundation IP policy.",
    email: "webmaster@eclipse-foundation.org",
    name: "Eclipse Winery",
    web_commit_signoff_required: false,
    workflows+: {
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('BPMN4TOSCA2BPEL') {
      archived: true,
      default_branch: "master",
      description: "Converter for transforming a BPMN4TOSCA management process to a TOSCA BPEL management process",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      webhooks: [
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          events+: [
            "create",
            "delete",
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
        },
      ],
    },
    orgs.newRepo('BPMN4TOSCAModeler') {
      archived: true,
      default_branch: "master",
      description: "Modeler for TOSCA management plans using BPMN4TOSCA",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      webhooks: [
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          events+: [
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push"
          ],
        },
      ],
    },
    orgs.newRepo('mulit-repo-test') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      private_vulnerability_reporting_enabled: true,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('multi-repo-dependency') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      private_vulnerability_reporting_enabled: true,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('test-repository') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "plain",
      delete_branch_on_merge: false,
      description: "This repository contains test artifacts to test winery's functionality. No real node types are stored.",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_projects: false,
      has_wiki: false,
      homepage: "https://winery.github.io/test-repository/",
      private_vulnerability_reporting_enabled: true,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      webhooks: [
        orgs.newRepoWebhook('https://hooks.waffle.io/api/projects/5971d136c448d20164b5cc1f/sources/5b3b086329ba5f0025c241de/receive') {
          content_type: "json",
          events+: [
            "*"
          ],
          secret: "********",
        },
      ],
      environments: [
        orgs.newEnvironment('github-pages'),
      ],
    },
    orgs.newRepo('test-repository-yaml') {
      allow_merge_commit: true,
      allow_update_branch: false,
      code_scanning_default_setup_enabled: true,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "Repository TOSCA YAML",
      has_wiki: false,
      private_vulnerability_reporting_enabled: true,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      webhooks: [
        orgs.newRepoWebhook('https://hooks.waffle.io/api/projects/5971d136c448d20164b5cc1f/sources/5b3b086429ba5f0025c241df/receive') {
          content_type: "json",
          events+: [
            "*"
          ],
          secret: "********",
        },
      ],
    },
    orgs.newRepo('winery') {
      allow_merge_commit: true,
      allow_update_branch: false,
      code_scanning_default_languages+: [
        "javascript",
        "javascript-typescript",
        "python",
        "ruby",
        "typescript"
      ],
      code_scanning_default_setup_enabled: true,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Winery project",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "main",
      gh_pages_source_path: "/docs",
      homepage: "https://winery.github.io/winery/",
      private_vulnerability_reporting_enabled: true,
      topics+: [
        "tosca"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      webhooks: [
        orgs.newRepoWebhook('https://hooks.slack.com/services/T4JHVU03E/B6AP80G7P/*') {
          content_type: "json",
          events+: [
            "commit_comment",
            "create",
            "delete",
            "deployment_status",
            "fork",
            "issue_comment",
            "issues",
            "pull_request",
            "pull_request_review",
            "pull_request_review_comment",
            "push",
            "release"
          ],
        },
        orgs.newRepoWebhook('https://hooks.waffle.io/api/projects/5b290e6af15e1800296d8ed2/sources/5971d1585bbf2e00c4a315fd/receive') {
          content_type: "json",
          events+: [
            "*"
          ],
          secret: "********",
        },
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          active: false,
          events+: [
            "create",
            "delete",
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
        },
      ],
      environments: [
        orgs.newEnvironment('github-pages'),
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule("main") {
          required_approving_review_count: 1,
        },
      ],
    },
    orgs.newRepo('winery-topologymodeler') {
      archived: true,
      default_branch: "master",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      webhooks: [
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          events+: [
            "create",
            "delete",
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
        },
      ],
    },
  ],
}
