require_relative 'base_page'
class ProjectsIssuesNewPage<BasePage

  text_field(:issue_subject, id:'issue_subject')

  def create_issue
    @bug_issue = ('issue' + rand(999999).to_s)
    self.issue_subject_element.when_visible.send_keys @bug_issue
    self.submit_form
    @bug_issue
  end
end