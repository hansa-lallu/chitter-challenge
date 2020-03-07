feature 'view home page' do
  scenario 'Basic greeting on home page' do
    visit '/'
    expect(page).to have_content('Welcome to Chitter!')
  end

  scenario 'Has a Sign up button' do 
    visit '/'
    click_link 'sign-up'
    expect(page).to have_content('Please enter your details')
  end 
end
