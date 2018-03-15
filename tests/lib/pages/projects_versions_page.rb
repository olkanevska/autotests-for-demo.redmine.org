require_relative 'base_page'
class ProjectsVersionsPage<BasePage

 link(:projects_versions,css:"div #tab-content-versions p a.icon-add")

  def open_projects_versions_new_page
    self.projects_versions?
    self.projects_versions
  end
end