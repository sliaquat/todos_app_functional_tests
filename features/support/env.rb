require 'capybara/rspec'

module Pages
  def home_page
    @home_page ||= HomePage.new('http://shltodos.meteor.com ')
  end
end

World(Capybara::DSL, Pages)
Capybara.current_driver = :selenium
Capybara.default_max_wait_time = 10
