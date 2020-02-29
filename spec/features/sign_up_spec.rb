feature 'user is able to sign up' do
  scenario 'User can sign up' do
    sign_up
    expect(page).to have_content('Please Login')
  end
end