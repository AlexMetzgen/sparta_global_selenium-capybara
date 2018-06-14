require 'capybara/dsl'

class BbcHomepage

# page object
HOMEPAGE_URL= "http://www.bbc.co.uk"
SIGN_IN_LINK_ID = "#idcta-link"

  def initialize
    Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end
  @driver = Capybara::Session.new(:chrome)
end
  def visit_homepage
    @driver.visit(HOMEPAGE_URL)
  end

  def click_sign_in
    @driver.find(SIGN_IN_LINK_ID).click
    sleep 10
  end


end

bbc=BbcHomepage.new
bbc.visit_homepage
bbc.cli
