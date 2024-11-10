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
    },
    orgs.newRepo('BPMN4TOSCAModeler') {
      archived: true,
      default_branch: "master",
      description: "Modeler for TOSCA management plans using BPMN4TOSCA",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('mulit-repo-test') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: true,
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
      delete_branch_on_merge: true,
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
      delete_branch_on_merge: true,
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
      environments: [
        orgs.newEnvironment('github-pages'),
      ],
    },
    orgs.newRepo('test-repository-yaml') {
      allow_merge_commit: true,
      allow_update_branch: false,
      code_scanning_default_setup_enabled: true,
      default_branch: "master",
      delete_branch_on_merge: true,
      description: "Repository TOSCA YAML",
      has_wiki: false,
      private_vulnerability_reporting_enabled: true,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
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
      delete_branch_on_merge: true,
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
      environments: [
        orgs.newEnvironment('github-pages'),
      ],
    },
    orgs.newRepo('winery-topologymodeler') {
      archived: true,
      default_branch: "master",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
  ],
}
