require 'capybara'
class HomePage

  def initialize(url)
    @url = url
  end

  #Elements
  def login_name_link
    Capybara.find('#login-name-link')
  end

  def login_button
    Capybara.find(:id, 'login-buttons-password')
  end

  def logout_button
    Capybara.find(:id, 'login-buttons-logout')
  end

  def signin_link
    Capybara.page.has_selector?('#login-sign-in-link') ? Capybara.find('#login-sign-in-link') : nil
  end

  def error_messages
    Capybara.find('.error-message')
  end

  def login_dropdown_close_link
    Capybara.page.has_selector?('.login-close-text') ? Capybara.find('.login-close-text') : nil
  end


  #Flows
  def sign_in_with(username, password)
    signin_link.click
    Capybara.fill_in('login-username', :with => username)
    Capybara.fill_in('login-password', :with => password)
    login_button.click
  end

  def signout
    close_dropdown
    if (!signin_link)
      login_name_link.click
      logout_button.click
      close_dropdown
    end
  end

  def visit
    Capybara.visit(@url)
  end

  def close_dropdown
    login_dropdown_close_link.click if login_dropdown_close_link
  end

end