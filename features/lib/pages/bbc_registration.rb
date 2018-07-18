require 'capybara/dsl'

class BBC_Registration
  include Capybara::DSL
  # Constants
  EMAIL_LABEL = '#email-label'
  DUMMY_EMAIL = 'aas30356@cjpeg.com'
  DUMMY_PASSWORD = 'Capybara91'
  SUBMIT_BUTTON = '#submit-button'

  # def initialize
  #   # Capybara.register_driver :chrome do |app|
  #   #   Capybara::Selenium::Driver.new(app, :browser => :chrome)
  #   # end
  #   #
  #   # @session = Capybara::Session.new(:chrome)
  # end


  def click_13_or_over
    click_link('13 or over')
    sleep 0.5
  end

  def fill_in_dob
    fill_in 'dateOfBirthDay', with: '02'
    fill_in 'dateOfBirthMonth', with: '08'
    fill_in 'dateOfBirthYear', with: '1991'
    sleep 1
  end

  def fill_in_dob_error
    fill_in 'dateOfBirthDay', with: '02'
    fill_in 'dateOfBirthMonth', with: '08'
    fill_in 'dateOfBirthYear', with: '2008'
    sleep 1
  end

  def check_dob
    page.has_content?('Sorry, you need to be 13 or over.')
  end

  def age_error
    sleep 2
    page.has_content?('Sorry, you need to be 13 or over.')
  end

  def click_dob_button
    click_button 'Continue'
    sleep 1
  end

  def fill_in_email(email)
    fill_in('email', with: email)
    fill_in'password', with: (DUMMY_PASSWORD)

  end

  def get_postcode
    fill_in'postcode', with: 'N14 7NJ'

  end

  def select_gender
    select 'Male', from: 'Gender'
  end

  def click_opt_out
    all(".button__text-wrapper").each do |x|
      if x.text == "No, thanks"
        x.click
        break
      end
    end
  end

  def submit_reg
    find(:id,'submit-button').click
    # click_link 'Register'
    sleep 4
  end
end

# bbc = BBC_Registration.new
