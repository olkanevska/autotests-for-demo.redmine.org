require_relative 'base_page'
class ProjectsVersionsPage<BasePage

 link(:projects_versions,css:"#tab-content-versions a.icon-add")

  def new
    self.projects_versions?
    self.projects_versions
  end
end