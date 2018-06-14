require 'capybara/dsl'
 require_relative '../generator/faker_gen'

class BbcSignInPage
  include Capybara::DSL

  HOMEPAGE_URL= "https://account.bbc.com/signin"
  SIGN_IN_LINK_ID = "#idcta-link"
  USERNAME = "user-identifier-input"
  PASSWORD = "password-input"
  SUBMIT = "#submit-button"
  def initialize
    @gen = RandomGenerator.new
  end


  def click_sign_in
    find(SIGN_IN_LINK_ID).click
  end

  def enter_username
    fill_in USERNAME, with: @gen.get_email
  end

  def enter_password
      fill_in PASSWORD, with: @gen.get_email
    end
  def submit_button
      # fill_in PASSWORD, with: @gen.get_username
      find(SUBMIT).click
  end

  def find_error
    page.has_content?('Sorry, we can’t find an account with that email. You can ')
  end





end
