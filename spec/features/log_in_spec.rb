require 'spec_helper'

feature 'Log in' do
  scenario 'User is able to access their account page' do
    log_in
    expect(page).to have_content "Welcome"
  end
end
