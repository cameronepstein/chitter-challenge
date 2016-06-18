feature 'Sign up' do
  scenario 'It allows user to sign up' do
    sign_up
    expect(page).to have_content "Welcome"
  end
end
#   scenario 'it returns error if details are incorrect' do
#     sign_up
#     visit('/sessions/new')
#     fill_in('email', with: 'camderon@gmail.com')
#     fill_in('password', with: 'pasdsword')
#     click_button('submit')
#     expect(page).not_to have_content "Welcome Cameron"
#   end
# end
