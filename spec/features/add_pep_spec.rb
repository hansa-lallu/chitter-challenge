feature 'user can add a peep'do
  scenario 'user can add a peep' do
    sign_up
    log_in
    expect(page).to have_content('The latest from Makers')
    expect(page).to have_button('Peep!')
    fill_in 'content', with: "Ping pong in 5"
    click_button("Peep!")
    expect(page).to have_content("Ping pong in 5")
  end

  scenario 'ordered in reverse chronological order' do
    sign_up
    log_in
    expect(current_path).to eq '/'
    fill_in 'content', with: "Ping pong in 5"
    click_button("Peep!")
    fill_in 'content', with: "Nerf gun battle in 10"
    click_button("Peep!")
    expect(page).to have_content("Nerf gun battle in 10")
    expect(page).to have_content("Ping pong in 5")
  end
end
