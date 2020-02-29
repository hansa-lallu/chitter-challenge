feature 'user can log in' do
  scenario 'user can log in' do
    sign_up
    fill_in 'username', with: "Mr Bing"
    fill_in 'password', with: "chicken"
    click_button 'Login!'
    expect(page).to have_content('The latest from Makers')
  end
end