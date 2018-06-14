require 'selenium-webdriver'

class SeleniumQaToolsForm
def initialize
  @practice_form_url = 'http://toolsqa.com/automation-practice-form'
  @firstname_field = 'firstname'
  @lastname_field = 'lastname'
  @sex_field = 'sex-1'
  @exp_field = 'exp-2'
  @datepicker_field='datepicker'
  @profession_field="profession-1"
  @tool_field="tool-1"
  @continents_field="continents"
  @cssoption="Africa"
  @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def visit_pratice_form
    @chrome_driver.get(@practice_form_url)

  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, @firstname_field).send_keys(text)

  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, @lastname_field).send_keys(text)
  end

  def input_sex_field
    @chrome_driver.find_element(:id, @sex_field).click

  end

  def input_exp_field
      @chrome_driver.find_element(:id, @exp_field).click
end

  def input_date_field(text)
      @chrome_driver.find_element(:id, @datepicker_field).send_keys(text)

  end

  def input_exp_field
      @chrome_driver.find_element(:id, @profession_field).click
  end

  def input_tool_field
      @chrome_driver.find_element(:id, @tool_field).click

  end

  def input_continents_field
    # get the select element
select = @chrome_driver.find_element(:tag_name, "select")
# get all the options for this element
all_options = select.find_elements(:tag_name, "option")

# select the options
all_options[1].click
sleep 5


end
end
 testing= SeleniumQaToolsForm.new
 testing.visit_pratice_form
 testing.input_firstname_field("alex")
 testing.input_lastname_field("metzgen")
 testing.input_sex_field
 testing.input_exp_field
 testing.input_date_field("12/12/12")
 testing.input_tool_field
 testing.input_continents_field
