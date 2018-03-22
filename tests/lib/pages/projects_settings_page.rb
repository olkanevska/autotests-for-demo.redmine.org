require_relative 'base_page'
class ProjectsSettingsPage<BasePage

  link(:versions,id:'tab-versions')
  link(:new,class:'new-issue')
  link(:members, id:'tab-members')
end