require 'spec_helper'

describe SeleniumSuperClass do
  context 'positive paths for the registration form and register' do
    before(:all) do
      @driver = SeleniumSuperClass.new.selenium_methods
      @faker_info_gen=SeleniumSuperClass.new.faker_generator
      @driver.access_registration_form

    end
    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
    end

    it 'should accept a first name' do
      @driver.set_first_name_field(@faker_info_gen.get_first_name)
      expect(@driver.get_first_name_field_value).to be_kind_of(String)
    end

    it 'should accept a last name' do
      @driver.set_last_name_field(@faker_info_gen.get_last_name)
      expect(@driver.get_last_name_field_value).to be_kind_of(String)
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      expect(@driver.select_marital_option(@faker_info_gen.get_status)).to be true
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      expect(@driver.select_hobby_option(@faker_info_gen.get_hobby)).to be true
    end

    it 'should have a country default of Afhghanistan' do
      expect(@driver.get_selected_country).to eq("Afghanistan")
    end

    it 'it should select a country'do
    @driver.country_dropdown_list_select(@faker_info_gen.get_country)
  end

  it 'accept a new DOB' do
    @driver.dob_month_list_select(@faker_info_gen.get_month)
    @driver.dob_day_list_select(@faker_info_gen.get_day)
    @driver.dob_year_list_select(@faker_info_gen.get_year)
  end

  it 'should accept a valid phone number' do
    number="03744663444"
    @driver.set_phone_number_field(@faker_info_gen.get_phone)
    expect(@driver.get_phone_number_field_value).to be_kind_of(String)
  end

  it 'should accept a username' do
    @driver.set_user_name_field(@faker_info_gen.get_username)
    expect(@driver.get_user_name_field_value).to be_kind_of(String)
  end

  it "should accept a email" do
    @driver.set_email_field(@faker_info_gen.get_email)
    expect(@driver.get_email_field_value).to be_kind_of(String)
  end

  it 'should accept a about yourself text' do
    @driver.set_about_yourself_field(@faker_info_gen.get_description)
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

  it 'submit button should have beenbclicked' do
    expect(@driver.click_submit)
  end
  it 'the resistration should be successful'do
  expect(@driver.check_registration_successful).to be true
  sleep 5 
end
end
end
