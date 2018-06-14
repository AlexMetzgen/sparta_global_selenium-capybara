require 'spec_helper'
describe 'Incorrect user details produces vaild error' do

  context 'It should respond with the correct error when incorrect details are input' do
    it 'Should produce an error when inputting incorrect password in to a vaild account' do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.sign_in_page.click_sign_in
      @bbc_site.sign_in_page.enter_username

      # click in username or sign in pages
      # fill in username on sign in pages
      # clcik sign in button on sign in pages
      # assert - error is sorry we cant find an account with thtat username, if your over 13, try your email address instead or get help here
    end
    it 'shoudl produce a error message when an incorrect password is typed in' do
      @bbc_site = BbcSite.new
      @bbc_site.sign_in_page.enter_password

    end
    it 'the submit button should be press'do
    @bbc_site = BbcSite.new
    @bbc_site.sign_in_page.submit_button
  end
  it 'A error message should appear' do
    @bbc_site = BbcSite.new
    expect(@bbc_site.sign_in_page.find_error).to be true
  end
end
end
