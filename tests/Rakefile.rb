require 'page-object'
require 'faker'
require_relative 'lib/pages/base_page'
require_relative 'lib/pages/registration_page'
require_relative 'lib/pages/my_account_page'
require_relative 'features/support/models/user'
require 'selenium-webdriver'
require'rspec/expectations'


desc 'Run positive tests'
task :run_positive => :registration do
  sh 'cucumber -t @positive'
end

namespace :test_with_registration do

  desc 'Registration '
   task :registration do
     include PageObject::PageFactory
     @browser = Selenium::WebDriver.for :firefox
     visit(RegistrationPage).login_element.when_visible
     @user = User.new
     on(RegistrationPage).fill_in_registration_form(@user)
     on(MyAccountPage).logout?
     hash = { login:"#{@user.login}", password: "#{@user.password}", full_name:"#{@user.full_name}", email:"#{@user.email}"}
     File.open('tmp/user.json', 'w') do |f|
       f.print hash.to_json
     end
     @browser.quit
   end

   desc 'Run test random_add_issue_with_add_watcher'
    task :add_issue_with_watcher => :registration do
      sh 'cucumber features/random_add_issue_with_add_watcher.feature'
    end

   desc 'Run test lost password'
    task :lost_password => :registration do
      sh 'cucumber features/lost_password.feature'
    end

   desc 'Run test log out'
    task :log_out => :registration do
      sh 'cucumber features/log_out.feature'
    end

   desc 'Run test log in'
    task :log_in => :registration do
     sh 'cucumber features/log_in.feature'
    end

   desc 'Run test edit type issue'
    task :edit_type_issue => :registration do
      sh 'cucumber features/edit_type_issue.feature'
    end

   desc 'Run test edit role in project'
    task :edit_role_in_project => :registration do
      sh 'cucumber features/edit_role_in_project.feature'
    end

   desc 'Run test create project version'
   task :create_project_version => :registration do
     sh 'cucumber features/create_project_version.feature'
   end

   desc 'Run test create project'
   task :create_project => :registration do
     sh 'cucumber features/create_project.feature'
   end

   desc 'Run test create issue'
   task :create_issue => :registration do
     include RSpec::Matchers
     sh 'cucumber features/create_issue.feature'
   end

   desc 'Run test add user in project'
   task :add_user => :registration do
     include RSpec::Matchers
     sh 'cucumber features/add_user_in_project.feature'
   end

   desc 'Run all tests in case with registration'
   task :run_wit_registration => :registration do
     sh 'cucumber -t @whit_registration'
   end

end
