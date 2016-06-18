require 'spec_helper'

feature 'User signs out' do

  before(:each) do
    Users.create(username: 'cameron', password: 'test')
  end

  scenario 'User is able to sign out once signed in' do
    log_in(username: 'cameron', password: 'password')
    click_button 'Sign out'
    expect(page).to have_content('goodbye!')
    expect(page).not_to have_content('Welcome')
  end
end
