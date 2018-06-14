require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
    end

    it 'should accept a first name' do
      @driver.set_first_name_field("alex")
      expect(@driver.get_first_name_field_value).to be_kind_of(String)
    end

    it 'should accept a last name' do
      @driver.set_last_name_field("Metzgen")
      expect(@driver.get_last_name_field_value).to be_kind_of(String)
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
    expect(@driver.select_marital_option("single")).to be true
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      expect(@driver.select_hobby_option("dance")).to be true
    end

    it 'should have a country default of Afhghanistan' do
      expect(@driver.get_selected_country).to eq("Afghanistan")
    end
    it 'it should select a country'do
      @driver.country_dropdown_list_select("Chad")
    end
    it 'accept a new DOB' do
      @driver.dob_month_list_select("12")
      @driver.dob_day_list_select("12")
      @driver.dob_year_list_select("2012")
    end

    # it 'should accept a new country value' do
    #   @driver.set_first_name_field("alex")
    # end

    it 'should accept a valid phone number' do
      number="03744663444"
      @driver.set_phone_number_field(number)
      expect(@driver.get_phone_number_field_value).to be_kind_of(String)
    end

    it 'should accept a username' do
      @driver.set_user_name_field("user343645346")
      expect(@driver.get_user_name_field_value).to be_kind_of(String)
    end

    it "should accept a email" do
      @driver.set_email_field("tessdfew3243t@test.com")
      expect(@driver.get_email_field_value).to be_kind_of(String)
    end

    it 'should accept a about yourself text' do
      @driver.set_about_yourself_field("test test test test test test test test")
      expect(@driver.get_about_yourself_value).to be_kind_of(String)
    end

    it 'should accept a password' do
      @driver.set_password_field("PutteRKHGj6ugggfgjf!123")
      expect(@driver.get_password_value).to be_kind_of(String)
    end

    it 'should accept a password confirmation' do
      @driver.set_confirmation_password_field("PutteRKHGj6ugggfgjf!123")
      expect(@driver.get_confirmation_password_value).to be_kind_of(String)
    end

    it 'button clicked' do
      expect(@driver.click_submit)
    end
    it 'the resistration should be successful'do
      expect(@driver.check_registration_successful).to be true
    end
  end
end
