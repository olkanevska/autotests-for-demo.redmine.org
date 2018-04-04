require 'json'
class BasePage
 include PageObject
 link(:login, class: 'login' )
 link(:logout, class:'logout')
 button(:submit_form , name:'commit')
 div(:expected_message, id:'flash_notice')

  def full_name
   user = JSON.parse(File.read('tmp/user.json'))
   full_name = user['full_name']
  end

  def user_login
   user = JSON.parse(File.read('tmp/user.json'))
   user_login = user['login']
  end

end