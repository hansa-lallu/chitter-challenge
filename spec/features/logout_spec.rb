feature 'user can log out' do
  scenario 'user can log out once signed in' do
    sign_up
    log_in
    click_link "Logout"
    expect(page).to have_content('Welcome to Chitter!')
  end
end
