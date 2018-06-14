require 'capybara'

Capybara.register_driver :chrome do |app|
Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

session= Capybara::Session.new(:chrome)

# page actions
session.visit('http://toolsqa.com/automation-practice-form')

# fulling in
session.fill_in 'firstname', with: 'test'

# choosing radio button
session.choose 'exp-6'

# selecting form the drop down
session.select 'Europe', from: 'continents'

# clicking a button
session.click_button 'submit'

# finding a button on the page for assertion
session.find_button('Button')
