require 'spec_helper'

feature 'Database saving' do
  scenario 'User is saved on database' do
    expect { sign_up }.to change(Users, :count).by(1)
    expect(page).to have_content('Welcome')
    expect(Users.first.username).to eq('cameron')
  end
end
