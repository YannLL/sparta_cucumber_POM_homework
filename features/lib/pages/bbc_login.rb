require 'capybara/dsl'

class BBC_Login
  include Capybara::DSL

  # Constants
  USERNAME_INPUT= 'username'
  PASSWORD_INPUT = 'password'
  DUMMY_EMAIL = 'lea.kailen@lm0k.com'
  DUMMY_PASSWORD = 'Capybara91'
  INCORRECT_EMAIL = 'RailsGod'
  INCORRECT_PASSWORD = 'BatmanIsASuperHero01'
  PROBLEM = false

  def fill_email
    fill_in USERNAME_INPUT, with: DUMMY_EMAIL
    sleep 1
  end

  def fill_email_incorrect
    fill_in USERNAME_INPUT, with: INCORRECT_EMAIL
    sleep 1
  end

  def fill_password
    fill_in PASSWORD_INPUT, with: DUMMY_PASSWORD
    sleep 1
  end

  def fill_password_incorrect
    fill_in PASSWORD_INPUT, with: INCORRECT_PASSWORD
    sleep 1
  end

  def click_submit
    click_button 'Sign in'
    sleep 3
  end

  def get_username_status
    # find(:id,'user-identifier-input')
    find_field('user-identifier-input').value
    sleep 1
  end

  def get_password_status
    # find(:id,'password-input')
    find_field('password-input').value
    sleep 1
  end

  def wrong_password_error
    sleep 3
    page.has_content?('Uh oh, that password doesn’t match that account. Please try again.')
  end

  def wrong_email_error
    pending
    # page.has_content?("Something's missing. Please check and try again.")
  end

end
