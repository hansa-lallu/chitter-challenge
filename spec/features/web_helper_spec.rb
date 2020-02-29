def sign_up
  visit ('/')
  click_link('Sign Up')
  expect(page).to have_content('Please enter your details')
  fill_in 'new_user_name', with: "Chandler Bing"
  fill_in 'new_user_username', with: "Mr Bing"
  fill_in 'new_user_email', with: "mrbing@chandler.com"
  fill_in 'new_user_password', with: "chicken"
  click_button 'Sign up!'
end