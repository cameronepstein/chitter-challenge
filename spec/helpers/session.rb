module SessionHelpers

  def sign_up(username: 'cameron',
              password: 'password')
    visit '/users/new'
    expect(page.status_code).to eq 200
    fill_in :username, with: username
    fill_in :password, with: password
    # fill_in :password_confirmation, with: password_confirmation
    click_button 'Register'
  end

  def log_in(username: 'cameron',
              password: 'password')
      visit '/users/log_in'
      fill_in :username, with: username
      fill_in :password, with: password
      click_button 'Log in'
  end
end
