feature "Attack" do
  scenario "As Player 1, I want to see Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content("Bill's HP: 0")
  end

  scenario "As Player 1, I want to attack Player 2 and get a confirmation" do
    sign_in_and_play
    click_button "Attack Player 2!"
    expect(page).to have_content("Bill was attacked by Bob")
  end

  scenario "As Player 1, I want my attack to reduce Player 2's HP by 10" do
    sign_in_and_play
    click_button "Attack Player 2!"
    expect(page).to have_content("Bill's HP: -10")
  end
end
