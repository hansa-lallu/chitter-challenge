feature 'user is able to sign up' do
  scenario 'User can sign up' do
    sign_up
    expect(page).to have_content('Please Login')
  end

  scenario 'user can return to homepage' do 
    visit '/'
    click_link "Sign Up"
    click_link "Return to Homepage"
    expect(page).to have_content('Welcome to Chitter!') 
    expect(current_path).to eq '/'
  end
end
