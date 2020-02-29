feature 'user can log in' do
  scenario 'user can log in' do
    visit('/')
    sign_up
    log_in
    expect(page).to have_content('The latest from Makers')
  end
end