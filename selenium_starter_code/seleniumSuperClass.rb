
require_relative 'services/selenium_demoqa_registration'
require_relative 'generator/faker_gen'

class SeleniumSuperClass

  def selenium_methods
    SeleniumDemoReg.new
  end

  def faker_generator
    RandomGenerator.new
  end
end
