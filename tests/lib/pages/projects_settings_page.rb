require_relative 'base_page'
class ProjectsSettingsPage<BasePage

  link(:open_projects_versions_page,id:'tab-versions')
  link(:open_projects_issues_new_page,class:'new-issue')
  link(:open_projects_members_page, id:'tab-members')
end