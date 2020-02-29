feature 'user can log in' do
  scenario 'user can log in' do
    visit('/')
    sign_up
    log_in
    expect(page).to have_content('The latest from Makers')
  end

  scenario 'user can return to homepage' do 
    visit('/')
    sign_up
    click_link "Return to Homepage"
    expect(page).to have_content('Welcome to Chitter!')
    expect(current_path).to eq '/'
  end 
end
