feature "Attack" do

  scenario "As Player 1, I want to attack Player 2 and get a confirmation" do
    sign_in_and_play_and_first_attack
    expect(page).to have_content("Bill was attacked by Bob")
  end

  scenario "As Player 1, I want my attack to reduce Player 2's HP by 10" do
    sign_in_and_play_and_first_attack
    expect(page).not_to have_content("Bill's HP: 0")
    expect(page).to have_content("Bill's HP: -10")
  end

  scenario "As Player 2, I want it to display that it's my turn" do
    sign_in_and_play_and_first_attack
    expect(page).to have_content("Bill's turn")
  end

end
